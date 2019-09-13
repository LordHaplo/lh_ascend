script "lh_deprecation.ash"

/****

Functions in here are defined in lh_ascend/lh_ascend_header.ash

These functions exist to handle outdated configuartions of the script. These would have been removed but we might as well keep them (in case we need to do any new configuration mangling) and they might actually help recover a long-forgotten ascension.

****/


boolean trackingSplitterFixer(string oldSetting, int day, string newSetting)
{
	string setting = get_property(oldSetting);
	if(setting == "")
	{
		return false;
	}

	matcher cleanSpaces = create_matcher(", ", setting);
	setting = replace_all(cleanSpaces, ",");
	string[int] retval = split_string(setting, ",");
	foreach x in retval
	{
		if(retval[x] == "")
		{
			continue;
		}
		matcher dayAdder = create_matcher("[(]", retval[x]);
		retval[x] = replace_all(dayAdder, "(" + day + ":");
		if(get_property(newSetting) != "")
		{
			set_property(newSetting, get_property(newSetting) + "," + retval[x]);
		}
		else
		{
			set_property(newSetting, retval[x]);
		}
	}
	set_property(oldSetting, "");
	return true;
}

boolean settingFixer()
{
	/***
		This will be removed at some point once a reasonable amount of time has
		passed such that anyone who used the script before a conversion in here
		should have had it fix them.

		Maybe it won\t. It doesn't really need to be I guess.
		Backwards compatibility forever!!!
	***/
	trackingSplitterFixer("lh_banishes_day1", 1, "lh_banishes");
	trackingSplitterFixer("lh_banishes_day2", 2, "lh_banishes");
	trackingSplitterFixer("lh_banishes_day3", 3, "lh_banishes");
	trackingSplitterFixer("lh_banishes_day4", 4, "lh_banishes");
	trackingSplitterFixer("lh_yellowRay_day1", 1, "lh_yellowRays");
	trackingSplitterFixer("lh_yellowRay_day2", 2, "lh_yellowRays");
	trackingSplitterFixer("lh_yellowRay_day3", 3, "lh_yellowRays");
	trackingSplitterFixer("lh_yellowRay_day4", 4, "lh_yellowRays");
	trackingSplitterFixer("lh_lashes_day1", 1, "lh_lashes");
	trackingSplitterFixer("lh_lashes_day2", 2, "lh_lashes");
	trackingSplitterFixer("lh_lashes_day3", 3, "lh_lashes");
	trackingSplitterFixer("lh_lashes_day4", 4, "lh_lashes");
	trackingSplitterFixer("lh_renenutet_day1", 1, "lh_renenutet");
	trackingSplitterFixer("lh_renenutet_day2", 2, "lh_renenutet");
	trackingSplitterFixer("lh_renenutet_day3", 3, "lh_renenutet");
	trackingSplitterFixer("lh_renenutet_day4", 4, "lh_renenutet");

	if(get_property("lh_delayTimer") == "")
	{
		set_property("lh_delayTimer", 1);
	}
	if(get_property("lh_100familiar") == "yes")
	{
		set_property("lh_100familiar", true);
	}
	if(get_property("lh_100familiar") == "no")
	{
		set_property("lh_100familiar", false);
	}
	if(get_property("lh_100familiar") == "true")
	{
		set_property("lh_100familiar", $familiar[Egg Benedict]);
	}
	if(get_property("lh_100familiar") == "false")
	{
		set_property("lh_100familiar", $familiar[none]);
	}
	if(get_property("lh_ballroomsong") == "set")
	{
		set_property("lh_ballroomsong", "finished");
	}
	if(get_property("lh_killingjar") == "done")
	{
		set_property("lh_killingjar", "finished");
	}
	if(get_property("lh_castleground") == "done")
	{
		set_property("lh_castleground", "finished");
	}
	if(get_property("lh_useCubeling") == "yes")
	{
		set_property("lh_useCubeling", true);
	}
	if((get_property("lh_gremlinclap") == "used") && !contains_text("lh_gremlinBanishes", "(" + $skill[Thunder Clap] + ")"))
	{
		set_property("lh_gremlinBanishes", get_property("lh_gremlinBanishes") + "(" + $skill[Thunder Clap] + ")");
		set_property("lh_gremlinclap", "");
	}
	if((get_property("lh_gremlinbatter") == "used") && !contains_text("lh_gremlinBanishes", "(" + $skill[Batter Up!] + ")"))
	{
		set_property("lh_gremlinBanishes", get_property("lh_gremlinBanishes") + "(" + $skill[Batter Up!] + ")");
		set_property("lh_gremlinbatter", "");
	}
	if((get_property("lh_gremlinlouder") == "used") && !contains_text("lh_gremlinBanishes", "(" + $item[Louder Than Bomb] + ")"))
	{
		set_property("lh_gremlinBanishes", get_property("lh_gremlinBanishes") + "(" + $item[Louder Than Bomb] + ")");
		set_property("lh_gremlinlouder", "");
	}
	if((get_property("lh_gremlinpants") == "used") && !contains_text("lh_gremlinBanishes", "(" + $skill[Talk About Politics] + ")"))
	{
		set_property("lh_gremlinBanishes", get_property("lh_gremlinBanishes") + "(" + $skill[Talk About Politics] + ")");
		set_property("lh_gremlinpants", "");
	}
	if((get_property("lh_gremlintennis") == "used") && !contains_text("lh_gremlinBanishes", "(" + $item[Tennis Ball] + ")"))
	{
		set_property("lh_gremlinBanishes", get_property("lh_gremlinBanishes") + "(" + $item[Tennis Ball] + ")");
		set_property("lh_gremlintennis", "");
	}
	if(get_property("lh_sonata") == "finished")
	{
		set_property("lh_sonofa", "finished");
		set_property("lh_sonata", "");
	}

	if(get_property("lh_useCubeling") == "no")
	{
		set_property("lh_useCubeling", false);
	}
	if(get_property("lh_wandOfNagamar") == "yes")
	{
		set_property("lh_wandOfNagamar", true);
	}
	if(get_property("lh_wandOfNagamar") == "no")
	{
		set_property("lh_wandOfNagamar", false);
	}
	if(get_property("lh_chasmBusted") == "yes")
	{
		set_property("lh_chasmBusted", true);
	}
	if(get_property("lh_chasmBusted") == "no")
	{
		set_property("lh_chasmBusted", false);
	}
	if(get_property("lh_ballroomflat") == "organ")
	{
		set_property("lh_ballroomflat", "finished");
	}
	if(get_property("lh_edDelayTimer") != "")
	{
		set_property("lh_delayTimer", get_property("lh_edDelayTimer"));
		set_property("lh_edDelayTimer", "");
	}
	if(get_property("lh_grimstoneFancyOilPainting") == "need")
	{
		set_property("lh_grimstoneFancyOilPainting", true);
	}
	if(get_property("lh_grimstoneFancyOilPainting") == "no")
	{
		set_property("lh_grimstoneFancyOilPainting", false);
	}
	if(get_property("lh_grimstoneOrnateDowsingRod") == "need")
	{
		set_property("lh_grimstoneOrnateDowsingRod", true);
	}
	if(get_property("lh_grimstoneOrnateDowsingRod") == "no")
	{
		set_property("lh_grimstoneOrnateDowsingRod", false);
	}

	if(get_property("kingLiberatedScript") == "scripts/kingLiberated.ash")
	{
		set_property("kingLiberatedScript", "lordHaps.ash");
	}
	if(get_property("afterAdventureScript") == "scripts/postadventure.ash")
	{
		set_property("afterAdventureScript", "postHaps.ash");
	}
	if(get_property("betweenAdventureScript") == "scripts/preadventure.ash")
	{
		set_property("betweenAdventureScript", "preHaps.ash");
	}
	if(get_property("betweenBattleScript") == "scripts/preadventure.ash")
	{
		set_property("betweenBattleScript", "preHaps.ash");
	}

	if(get_property("lh_abooclover") == "")
	{
		set_property("lh_abooclover", true);
	}
	if(get_property("lh_abooclover") == "used")
	{
		set_property("lh_abooclover", false);
	}
	if(get_property("lh_aftercore") == "")
	{
		set_property("lh_aftercore", false);
	}
	if(get_property("lh_aftercore") == "done")
	{
		set_property("lh_aftercore", true);
	}
	if(get_property("lh_bean") == "")
	{
		set_property("lh_bean", false);
	}
	if(get_property("lh_bean") == "plant")
	{
		set_property("lh_bean", true);
	}


	if(get_property("lh_cubeItems") == "")
	{
		set_property("lh_cubeItems", true);
	}
	if(get_property("lh_cubeItems") == "done")
	{
		set_property("lh_cubeItems", false);
	}

	if(get_property("lh_gunpowder") == "done")
	{
		set_property("lh_gunpowder", "finished");
	}

	if(get_property("lh_mistypeak") == "done")
	{
		set_property("lh_mistypeak", "finished");
	}

	if(get_property("lh_xiblaxianChoice") == "")
	{
		set_property("lh_xiblaxianChoice", $item[Xiblaxian Ultraburrito]);
	}

	if(get_property("lastPlusSignUnlock") == "true")
	{
		print("lastPlusSignUnlock was changed to a boolean, fixing...", "red");
		set_property("lastPlusSignUnlock", my_ascensions());
	}
	if(get_property("lastTempleUnlock") == "true")
	{
		print("lastTempleUnlock was changed to a boolean, fixing...", "red");
		set_property("lastTempleUnlock", my_ascensions());
	}

	if(property_exists("lh_day1_init"))
	{
		print("Found old day initialization trackers, removing...", "red");
		remove_property("lh_day1_init");
		remove_property("lh_day2_init");
		remove_property("lh_day3_init");
		remove_property("lh_day4_init");
	}

	if(property_exists("lh_gaudy"))
	{
		print("Some lingering stuff from when gaudy pirates mattered is still here, let's get rid of it...", "red");
		remove_property("lh_gaudy");
	}

	if(get_property("lh_paranoia") == "")
	{
		print("No paranoia value, we probably don't want to be paranoid...", "red");
		set_property("lh_paranoia", -1);
	}

	if(get_property("lh_helpMeMafiaIsSuperBrokenAaah") == "")
	{
		print("Mafia probably isn't super broken, so let's set it that way...", "red");
		set_property("lh_helpMeMafiaIsSuperBrokenAaah", false);
	}

	return true;
}
