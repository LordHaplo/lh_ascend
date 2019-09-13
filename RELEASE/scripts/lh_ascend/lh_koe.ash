script "lh_koe.ash"

boolean in_koe()
{
	return my_path() == "37" || my_path() == "Kingdom of Exploathing";
}

boolean koe_initializeSettings()
{
	if(in_koe())
	{
		set_property("lh_getStarKey", true);
		set_property("lh_bruteForcePalindome", in_hardcore());
		set_property("lh_day1_cobb", "finished");
		set_property("lh_bean", true);
		set_property("lh_airship", "finished");
		set_property("lh_holeinthesky", false);
		set_property("lh_grimstoneOrnateDowsingRod", "false");
		set_property("lh_invaderKilled", false);
		set_property("lh_paranoia", 3);

		// The Hidden Temple is originally unlocked
		set_property("lh_spookyfertilizer", "finished");
		set_property("lh_spookymap", "finished");
		set_property("lh_treecoin", "finished");
		set_property("lh_spookysapling", "finished");
	}
	return false;
}

boolean LX_koeInvaderHandler()
{
	if(!in_koe())
	{
		return false;
	}
	if(get_property("lh_invaderKilled").to_boolean())
	{
		return false;
	}

	if(have_effect($effect[Flared Nostrils]) > 0)
		doHottub();
	uneffect($effect[Flared Nostrils]);
	if(have_effect($effect[Flared Nostrils]) > 0)
	{
		// Delay until after the rest of the tower, I suppose
		return false;
	}

	buffMaintain($effect[Astral Shell], 10, 1, 1);
	buffMaintain($effect[Elemental Saucesphere], 10, 1, 1);
	buffMaintain($effect[Scarysauce], 10, 1, 1);

	resetMaximize();
	addToMaximize("200 all res");

	if(!possessEquipment($item[meteorb]))
		retrieve_item(1, $item[meteorb]);
	// Maybe you don't have the IOTM? Seems worth it, whatever
	pullXWhenHaveY($item[meteorb], 1, 0);
	lhEquip($slot[off-hand], $item[meteorb]);

	simMaximize();

	float damagePerRound = 0.0;
	float baseDamage = 1.0 - 0.1 * my_daycount();
	foreach el in $elements[cold, hot, sleaze, spooky, stench]
	{
		float offset = lh_canBeachCombHead(el) ? 3.0 : 0.0;
		damagePerRound += baseDamage * (100.0 - elemental_resist_value(offset + simValue(el + " Resistance")))/100.0;
	}
	print("The Invader: Expecting to take " + damagePerRound + " damage per round", "blue");
	int turns = ceil(0.95 / damagePerRound);

	int damageCap = 100 * my_daycount();

	// How many damage sources do we need?
	if(have_skill($skill[Weapon of the Pastalord]) && lh_is_valid($skill[Weapon of the Pastalord]))
	{
		int sources = 2;
		if(possessEquipment($item[meteorb])) sources++;
		if(sources * turns * damageCap >= 1000)
		{
			foreach el in $elements[cold, hot, sleaze, spooky, stench]
			{
				lh_beachCombHead(el);
			}
			// Meteorb is going to add +hot, so remove that
			setFlavour($element[cold]);
			buffMaintain($effect[Carol of the Hells], 50, 1, 1);
			buffMaintain($effect[Song of Sauce], 150, 1, 1);
			buffMaintain($effect[Glittering Eyelashes], 0, 1, 1);
			acquireMP(100, true);

			set_property("choiceAdventure1393", 1); // Take care of it...
			boolean ret = lhAdv(1, $location[The Invader]);
			if(have_effect($effect[Beaten Up]) > 0)
			{
				abort("We died to the invader. Do it manually please?");
			}
			set_property("lh_invaderKilled", true);
			return ret;
		}
	}
	abort("I'm not really sure how to kill this Invader guy. Do it manually?");
	return false;
}
