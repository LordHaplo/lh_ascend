script "lh_digimon.ash"


void digimon_initializeDay(int day)
{
	digimon_makeTeam();
}

void digimon_initializeSettings()
{
	if(lh_my_path() == "Pocket Familiars")
	{
		set_property("lh_ballroomsong", "finished");
		set_property("lh_getBeehive", false);
		set_property("lh_getBoningKnife", false);
		set_property("lh_cubeItems", false);
		set_property("lh_getStarKey", true);
		set_property("lh_gremlins", "finished");
		set_property("lh_grimstoneOrnateDowsingRod", false);
		set_property("lh_hippyInstead", true);
		set_property("lh_holeinthesky", true);
		set_property("lh_ignoreFlyer", true);
		set_property("lh_shenCopperhead", true);
		set_property("lh_swordfish", "finished");
		set_property("lh_useCubeling", false);
		set_property("lh_wandOfNagamar", false);
	}
}


boolean digimon_makeTeam()
{
	if(lh_my_path() == "Pocket Familiars")
	{
		string temp = visit_url("famteam.php", false);

		familiar back = $familiar[Killer Bee];
		foreach fam in $familiars[Killer Bee, Space Jellyfish, Slotter]
		{
			if(have_familiar(fam))
			{
				back = fam;
			}
		}

		temp = visit_url("famteam.php?slot=3&fam=" + to_int(back) + "&pwd&action=slot");
		if(get_property("_digimonBack").to_familiar() != back)
		{
			set_property("_digimonBack", back);
		}

		familiar middle = $familiar[Scary Death Orb];
		foreach fam in $familiars[]
		{
			if((fam.poke_move_2 == "Backstab") && have_familiar(fam) && (back != fam) && (fam.poke_level != 5))
			{
				middle = fam;
			}
		}

		temp = visit_url("famteam.php?slot=2&fam=" + to_int(middle) + "&pwd&action=slot");
		if(get_property("_digimonMiddle").to_familiar() != middle)
		{
			set_property("_digimonMiddle", middle);
		}

		familiar front = $familiar[none];
		foreach fam in $familiars[]
		{
			if((fam.poke_attribute == "Smart") && have_familiar(fam) && (back != fam) && (middle != fam) && (fam.poke_level != 5))
			{
				front = fam;
			}
		}
		if(front == $familiar[none])
		{
			foreach fam in $familiars[]
			{
				if(have_familiar(fam) && (back != fam) && (middle != fam) && (fam.poke_level != 5))
				{
					front = fam;
				}
			}
		}

		if(front == $familiar[none])
		{
			front = $familiar[Levitating Potato];
		}

		print("I choose you! " + front.name + " the " + front + "!!!!", "green");
#		temp = visit_url("famteam.php?slot=1&fam=" + to_int($familiar[El Vibrato Megadrone]) + "&pwd&action=slot");
		temp = visit_url("famteam.php?slot=1&fam=" + to_int(front) + "&pwd&action=slot");
		if(get_property("_digimonFront").to_familiar() != front)
		{
			set_property("_digimonFront", front);
		}
	}
	return true;
}


boolean LM_digimon()
{
	if(lh_my_path() == "Pocket Familiars")
	{
		digimon_makeTeam();
		if((my_primestat() == $stat[Muscle]) && !possessEquipment($item[Dented Scepter]) && (my_level() < 13))
		{
			lh_advWitchess("king");
		}
	}
	return false;
}

boolean digimon_lhAdv(int num, location loc, string option)
{
	if(lh_my_path() != "Pocket Familiars")
	{
		abort("Can not use Digimon protocols without Digimon!");
	}

	if(option == "")
	{
		#Yeah, this is not a thing right now.
	}

#	boolean retval = adv1(loc, 0, option);
	string temp = visit_url(to_url(loc), false);

	if((get_property("lh_mcmuffin") == "ed") && (lh_my_path() == "Pocket Familiars") && (loc == $location[The Lower Chambers]))
	{
		temp = visit_url(to_url(loc) + "a", false);
	}

	print("[Insert Punch Out music here]", "green");
	temp = visit_url("fambattle.php");
	int choiceLimiter = 0;
	while(contains_text(temp, "whichchoice value=") || contains_text(temp, "whichchoice="))
	{
		print("Digimon hit a choice adventure (" + loc + "), trying....", "red");
		matcher choice_matcher = create_matcher("(?:whichchoice value=(\\d+))|(?:whichchoice=(\\d+))", temp);
		if(choice_matcher.find())
		{
			int choice = choice_matcher.group(1).to_int();
			if(choice == 0)
			{
				choice = choice_matcher.group(2).to_int();
			}

			if($ints[89, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 914] contains choice)
			{
				return adv1(loc, 0, option);
			}

			temp = visit_url("choice.php?pwd=" + my_hash() + "&whichchoice=" + choice + "&option=" + get_property("choiceAdventure" + choice).to_int());
		}
		choiceLimiter += 1;
		if(choiceLimiter > 5)
		{
			abort("Choice chain too long or I'm stuck!");
		}
	}
	temp = visit_url("fambattle.php");

	if(!contains_text(temp, "Fight!"))
	{
		return false;
	}

	if(svn_info("Ezandora-Helix-Fossil-branches-Release").revision > 0)
	{
		print("Consulting the Helix Fossil....", "green");
		boolean ignore = cli_execute("ashq import 'Pocket Familiars'; buffer temp = PocketFamiliarsFight();");
		if($locations[The Defiled Alcove, The Defiled Cranny, The Defiled Niche, The Defiled Nook] contains my_location())
		{
			if(item_amount($item[Evilometer]) > 0)
			{
				use(1, $item[Evilometer]);
			}
		}
		cli_execute("postHaps");
		return true;
	}

	if(get_property("_digimonFront") == "")
	{
		set_property("_digimonFront", my_poke_fam(0));
	}
	if(get_property("_digimonMiddle") == "")
	{
		set_property("_digimonMiddle", my_poke_fam(1));
	}
	if(get_property("_digimonBack") == "")
	{
		set_property("_digimonBack", my_poke_fam(2));
	}


	familiar blastFam = to_familiar(get_property("_digimonBack"));
	familiar midFam = to_familiar(get_property("_digimonMiddle"));
#	familiar blastFam = $familiar[Space Jellyfish];
#	if(!have_familiar($familiar[Space Jellyfish]))
#	{
#		blastFam = $familiar[Killer Bee];
#	}

	if(contains_text(temp, "famaction[ult_crazyblast-" + to_int(blastFam) + "]"))
	{
		temp = visit_url("fambattle.php?pwd&famaction[ult_crazyblast-" + to_int(blastFam) + "]=ULTIMATE%3A+Spiky+Burst");
	}
	else
	{
		temp = visit_url("fambattle.php?pwd&famaction[backstab-" + to_int(blastFam) + "]=Backstab");
	}
	int action = 1;
	

	while(!contains_text(temp, "<!--WINWINWIN-->"))
	{
		if((action & 1) == 1)
		{
			temp = visit_url("fambattle.php?pwd&famaction[backstab-" + to_int(midFam) + "]=Backstab");
		}
		else
		{
			temp = visit_url("fambattle.php?pwd&famaction[backstab-" + to_int(blastFam) + "]=Backstab");
		}
		action++;
		if(contains_text(temp, "dejected and defeated"))
		{
			break;
		}
		if(action > 40)
		{
			abort("Can not win this Digimon Battle!");
		}
	}

	if($locations[The Defiled Alcove, The Defiled Cranny, The Defiled Niche, The Defiled Nook] contains my_location())
	{
		if(item_amount($item[Evilometer]) > 0)
		{
			use(1, $item[Evilometer]);
		}
	}
	cli_execute("postHaps");
	return true;
}
