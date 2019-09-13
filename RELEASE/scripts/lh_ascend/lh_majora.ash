script "lh_majora.ash"


void majora_initializeSettings()
{
	if(lh_my_path() == "Disguises Delimit")
	{
		set_property("lh_getBeehive", true);
		set_property("lh_getBoningKnife", true);
		set_property("lh_cubeItems", true);
		set_property("lh_getStarKey", true);
		set_property("lh_grimstoneOrnateDowsingRod", false);
		set_property("lh_holeinthesky", true);
		set_property("lh_useCubeling", true);
		set_property("lh_wandOfNagamar", true);
	}
}

void majora_initializeDay(int day)
{

}

boolean LM_majora()
{
	if(lh_my_path() == "Disguises Delimit")
	{
	}
	return false;
}

