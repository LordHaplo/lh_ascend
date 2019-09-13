script "lh_ascend_header.ash"

//	This is the primary (or will be) header file for lh_ascend.
//	All potentially cross-dependent functions should be defined here such that we can use them from
//	other scripts without the circular dependency issue. Thanks Ultibot for the advice regarding this.
//	Documentation can go here too, I suppose.
//	All functions that are defined outside of lh_ascend must include a note regarding where they come from
//		Seriously, it\'s rude not to.

//	Question Functions
//	Denoted as L<classification>[<path>]_<name>:
//		<classification>: Level to be used (Numeric, X for any). A for entire ascension.
//		<classification>: M for most of ascension, "sc" for Seal Clubber only
//		<path>: [optional] indicates path to be used in. "ed" for ed, "cs" for community service
//			Usually separated with _
boolean LA_cs_communityService();				//Defined in lh_ascend/lh_community_service.ash
boolean LM_edTheUndying();						//Defined in lh_ascend/lh_edTheUndying.ash

boolean LX_desertAlternate();
boolean LX_handleSpookyravenNecklace();
boolean LX_handleSpookyravenFirstFloor();
boolean LX_phatLootToken();
boolean LX_islandAccess();
boolean LX_fancyOilPainting();
boolean LX_setBallroomSong();
boolean LX_fcle();
boolean LX_ornateDowsingRod();
boolean LX_getDictionary();
boolean LX_dictionary();
boolean LX_nastyBooty();
boolean LX_spookyravenSecond();
boolean LX_spookyBedroomCombat();
boolean LX_getDigitalKey();
boolean LX_guildUnlock();
boolean LX_hardcoreFoodFarm();
boolean LX_melvignShirt();
boolean LX_attemptPowerLevel();
boolean LX_attemptFlyering();
boolean LX_bitchinMeatcar();
boolean LX_meatMaid();
boolean LX_craftAcquireItems();
boolean LX_freeCombats();
boolean LX_dolphinKingMap();
boolean LX_steelOrgan();
boolean Lx_resolveSixthDMT();
boolean LX_witchess();
boolean LX_chateauPainting();
boolean LX_faxing();
boolean LX_universeFrat();
boolean LX_burnDelay();
boolean LX_loggingHatchet();


//*********** Section of stuff moved into lh_optionals.ash *******************/
boolean LX_artistQuest();
boolean LX_dinseylandfillFunbucks();
//*********** End of stuff moved into lh_optionals.ash ***********************/

boolean Lsc_flyerSeals();

boolean L0_handleRainDoh();

boolean L1_ed_island();							//Defined in lh_ascend/lh_edTheUndying.ash
boolean L1_ed_dinsey();							//Defined in lh_ascend/lh_edTheUndying.ash
boolean L1_ed_island(int dickstabOverride);		//Defined in lh_ascend/lh_edTheUndying.ash
boolean L1_ed_islandFallback();					//Defined in lh_ascend/lh_edTheUndying.ash
boolean L1_dnaAcquire();
boolean L2_mosquito();
boolean L2_treeCoin();
boolean L2_spookyMap();
boolean L2_spookyFertilizer();
boolean L2_spookySapling();

boolean L3_tavern();

boolean L4_batCave();
boolean L5_haremOutfit();
boolean L5_findKnob();
boolean L5_goblinKing();
boolean L5_getEncryptionKey();
boolean L6_dakotaFanning();
boolean L6_friarsGetParts();
boolean L6_friarsHotWing();
boolean L8_trapperStart();
boolean L7_crypt();
boolean L8_trapperGround();
boolean L8_trapperYeti();
boolean L8_trapperExtreme();
boolean L8_trapperGroar();
boolean L9_chasmStart();
boolean L9_chasmBuild();
boolean L9_highLandlord();
boolean L9_aBooPeak();
boolean L9_twinPeak();
boolean L9_oilPeak();
boolean L9_leafletQuest();

boolean L10_plantThatBean();
boolean L10_airship();
boolean L10_basement();
boolean L10_ground();
boolean L10_topFloor();
boolean L10_holeInTheSkyUnlock();
boolean L10_holeInTheSky();
boolean L11_palindome();
boolean L11_hiddenCity();
boolean L11_hiddenTavernUnlock();
boolean L11_hiddenTavernUnlock(boolean force);
boolean L11_blackMarket();
boolean L11_forgedDocuments();
boolean L11_aridDesert();
boolean L11_mcmuffinDiary();
boolean L11_unlockHiddenCity();
boolean L11_hiddenCityZones();
boolean L11_talismanOfNam();
boolean L11_shenCopperhead();
boolean L11_ronCopperhead();
boolean L11_redZeppelin();
boolean L11_mauriceSpookyraven();
boolean L11_nostrilOfTheSerpent();
boolean L11_unlockPyramid();
boolean L11_unlockEd();
boolean L11_defeatEd();
boolean L11_getBeehive();
boolean L11_fistDocuments();
boolean L12_lastDitchFlyer();
boolean L12_flyerBackup();
boolean L12_flyerFinish();
boolean L12_preOutfit();
boolean L12_getOutfit();
boolean L12_startWar();
boolean L12_filthworms();
boolean L12_sonofaBeach();
boolean L12_sonofaFinish();
boolean L12_gremlins();
boolean L12_gremlinStart();
boolean L12_orchardFinalize();
boolean L12_orchardStart();
boolean L12_finalizeWar();
boolean L13_sorceressDoor();
boolean L13_towerNSEntrance();
boolean L13_towerNSContests();
boolean L13_towerNSHedge();
boolean L13_towerNSTower();
boolean L13_towerNSNagamar();
boolean L13_towerNSTransition();
boolean L13_towerNSFinal();
boolean L13_ed_councilWarehouse();
boolean L13_ed_towerHandler();
boolean questOverride();


//
//	Primary adventuring functions, we need additonal functionality over adv1, so we do it here.
//	Note that, as of at least Mafia r16560, we can not use run_combat(<combat filter>).
//	Don\'t even try it, it requires a custom modification that we can not really do an ASH workaround for.
//	They are all defined in lh_ascend/lh_adventure.ash
boolean lhAdv();
boolean lhAdv(location loc);								//num is ignored
boolean lhAdv(int num, location loc);						//num is ignored
boolean lhAdv(int num, location loc, string option);		//num is ignored
boolean lhAdv(location loc, string option);
boolean lhAdvBypass(string url);
boolean lhAdvBypass(string url, string option);
boolean lhAdvBypass(string url, location loc);
boolean lhAdvBypass(string url, location loc, string option);
#boolean lhAdvBypass(string[int] url);
#boolean lhAdvBypass(string[int] url, string option);
#boolean lhAdvBypass(string[int] url, location loc);
boolean lhAdvBypass(int becauseStringIntIsSomehowJustString, string[int] url, location loc, string option);
boolean lhAdvBypass(int snarfblat);
boolean lhAdvBypass(int snarfblat, string option);
boolean lhAdvBypass(int snarfblat, location loc);
boolean lhAdvBypass(int snarfblat, location loc, string option);

//
//	Secondary adventuring functions
//	They are all defined in lh_ascend/lh_adventure.ash
boolean preAdvXiblaxian(location loc);


// Log Handling/User Output
void print_header();


// Semi-rare Handlers:
boolean fortuneCookieEvent();

// Familiar Behavior, good stuff.
boolean handleFamiliar(familiar fam);
boolean handleFamiliar(string fam);
boolean basicFamiliarOverrides();

// Meat Generation
boolean autosellCrap();

// Daily Events that should happen at start and not end.
boolean dailyEvents();


//
//	External lh_ascend.ash functions, indicate where they come from.
//
//


//Do we have a some item either equipped or in inventory (not closet or hagnk\'s.
boolean possessEquipment(item equipment);		//Defined in lh_ascend/lh_equipment.ash
int equipmentAmount(item equipment); // Defined in lh_ascend/lh_equipment.ash

//Do Bjorn stuff
boolean handleBjornify(familiar fam);			//Defined in lh_ascend/lh_equipment.ash

//Remove +NC or +C equipment
void removeNonCombat();							//Defined in lh_ascend/lh_equipment.ash
void removeCombat();							//Defined in lh_ascend/lh_equipment.ash

//Wrapper for get_campground(), primarily deals with the oven issue in Ed.
//Also uses Garden item as identifier for the garden in addition to what get_campground() does
int[item] lh_get_campground();					//Defined in lh_ascend/lh_util.ash


//Returns how many Hero Keys and Phat Loot tokens we have.
//effective count (with malware) vs true count.
int towerKeyCount(boolean effective);			//Defined in lh_ascend/lh_util.ash
int towerKeyCount();							//Defined in lh_ascend/lh_util.ash


//Uses Daily Dungeon Malware to get Phat Loot.
boolean LX_malware();							//Defined in lh_ascend.ash

//Determines if we need ore for the trapper or not.
boolean needOre();								//Defined in lh_ascend/lh_util.ash

//Wrapper for my_path(), in case there are delays in Mafia translating path values
string lh_my_path();							//Defined in lh_ascend/lh_util.ash

//Visits gnasir, can change based on path
void lh_visit_gnasir();

//Item disambiguation functions
boolean hasSpookyravenLibraryKey();				//Defined in lh_ascend/lh_util.ash
boolean hasILoveMeVolI();						//Defined in lh_ascend/lh_util.ash
boolean useILoveMeVolI();						//Defined in lh_ascend/lh_util.ash


//Are we expecting a Protonic Accelerator Pack ghost report?
boolean expectGhostReport();					//Defined in lh_ascend/lh_mr2016.ash


//Quest Object information, meant for "normal" runs but could technically be expanded or altered.
record questRecord
{
	string prop;					// lh_ascend property reflecting the quest
	string mprop;					// Mafia property reflecting the quest, if applicable
	int type;						// 0 = main line quest, 1 = side quest (allowing for other options)
	string func;					// lh_ascend function that attempts this quest.
};


//Large pile dump.
boolean L11_ed_mauriceSpookyraven();						//Defined in lh_ascend/lh_edTheUndying.ash
boolean L12_sonofaPrefix();									//Defined in lh_ascend.ash
boolean L9_ed_chasmBuild();									//Defined in lh_ascend/lh_edTheUndying.ash
boolean L9_ed_chasmBuildClover(int need);					//Defined in lh_ascend/lh_edTheUndying.ash
boolean L9_ed_chasmStart();									//Defined in lh_ascend/lh_edTheUndying.ash
boolean LM_boris();											//Defined in lh_ascend/lh_boris.ash
boolean LM_fallout();										//Defined in lh_ascend/lh_fallout.ash
boolean LM_jello();											//Defined in lh_ascend/lh_jellonewbie.ash
boolean LM_pete();											//Defined in lh_ascend/lh_sneakypete.ash
boolean LX_ghostBusting();									//Defined in lh_ascend/lh_mr2016.ash
boolean LX_theSource();										//Defined in lh_ascend/lh_theSource.ash
familiar[int] List();										//Defined in lh_ascend/lh_list.ash
effect[int] List(boolean[effect] data);						//Defined in lh_ascend/lh_list.ash
familiar[int] List(boolean[familiar] data);					//Defined in lh_ascend/lh_list.ash
int[int] List(boolean[int] data);							//Defined in lh_ascend/lh_list.ash
item[int] List(boolean[item] data);							//Defined in lh_ascend/lh_list.ash
effect[int] List(effect[int] data);							//Defined in lh_ascend/lh_list.ash
familiar[int] List(familiar[int] data);						//Defined in lh_ascend/lh_list.ash
int[int] List(int[int] data);								//Defined in lh_ascend/lh_list.ash
item[int] List(item[int] data);								//Defined in lh_ascend/lh_list.ash
effect[int] ListErase(effect[int] list, int index);			//Defined in lh_ascend/lh_list.ash
familiar[int] ListErase(familiar[int] list, int index);		//Defined in lh_ascend/lh_list.ash
int[int] ListErase(int[int] list, int index);				//Defined in lh_ascend/lh_list.ash
item[int] ListErase(item[int] list, int index);				//Defined in lh_ascend/lh_list.ash
int ListFind(effect[int] list, effect what);				//Defined in lh_ascend/lh_list.ash
int ListFind(effect[int] list, effect what, int idx);		//Defined in lh_ascend/lh_list.ash
int ListFind(familiar[int] list, familiar what);			//Defined in lh_ascend/lh_list.ash
int ListFind(familiar[int] list, familiar what, int idx);	//Defined in lh_ascend/lh_list.ash
int ListFind(int[int] list, int what);						//Defined in lh_ascend/lh_list.ash
int ListFind(int[int] list, int what, int idx);				//Defined in lh_ascend/lh_list.ash
int ListFind(item[int] list, item what);					//Defined in lh_ascend/lh_list.ash
int ListFind(item[int] list, item what, int idx);			//Defined in lh_ascend/lh_list.ash
effect[int] ListInsert(effect[int] list, effect what);		//Defined in lh_ascend/lh_list.ash
familiar[int] ListInsert(familiar[int] list, familiar what);//Defined in lh_ascend/lh_list.ash
int[int] ListInsert(int[int] list, int what);				//Defined in lh_ascend/lh_list.ash
item[int] ListInsert(item[int] list, item what);			//Defined in lh_ascend/lh_list.ash
effect[int] ListInsertAt(effect[int] list, effect what, int idx);//Defined in lh_ascend/lh_list.ash
familiar[int] ListInsertAt(familiar[int] list, familiar what, int idx);//Defined in lh_ascend/lh_list.ash
int[int] ListInsertAt(int[int] list, int what, int idx);	//Defined in lh_ascend/lh_list.ash
item[int] ListInsertAt(item[int] list, item what, int idx);	//Defined in lh_ascend/lh_list.ash
effect[int] ListInsertFront(effect[int] list, effect what);	//Defined in lh_ascend/lh_list.ash
familiar[int] ListInsertFront(familiar[int] list, familiar what);//Defined in lh_ascend/lh_list.ash
int[int] ListInsertFront(int[int] list, int what);			//Defined in lh_ascend/lh_list.ash
item[int] ListInsertFront(item[int] list, item what);		//Defined in lh_ascend/lh_list.ash
effect[int] ListInsertInorder(effect[int] list, effect what);//Defined in lh_ascend/lh_list.ash
familiar[int] ListInsertInorder(familiar[int] list, familiar what);//Defined in lh_ascend/lh_list.ash
int[int] ListInsertInorder(int[int] list, int what);		//Defined in lh_ascend/lh_list.ash
item[int] ListInsertInorder(item[int] list, item what);		//Defined in lh_ascend/lh_list.ash
string ListOutput(effect[int] list);						//Defined in lh_ascend/lh_list.ash
string ListOutput(familiar[int] list);						//Defined in lh_ascend/lh_list.ash
string ListOutput(int[int] list);							//Defined in lh_ascend/lh_list.ash
string ListOutput(item[int] list);							//Defined in lh_ascend/lh_list.ash
effect[int] ListRemove(effect[int] list, effect what);		//Defined in lh_ascend/lh_list.ash
effect[int] ListRemove(effect[int] list, effect what, int idx);//Defined in lh_ascend/lh_list.ash
familiar[int] ListRemove(familiar[int] list, familiar what);//Defined in lh_ascend/lh_list.ash
familiar[int] ListRemove(familiar[int] list, familiar what, int idx);//Defined in lh_ascend/lh_list.ash
int[int] ListRemove(int[int] list, int what);				//Defined in lh_ascend/lh_list.ash
int[int] ListRemove(int[int] list, int what, int idx);		//Defined in lh_ascend/lh_list.ash
item[int] ListRemove(item[int] list, item what);			//Defined in lh_ascend/lh_list.ash
item[int] ListRemove(item[int] list, item what, int idx);	//Defined in lh_ascend/lh_list.ash
location ListOutput(location[int] list);					//Defined in lh_ascend/lh_list.ash
location[int] locationList();								//Defined in lh_ascend/lh_list.ash
location[int] List(boolean[location] data);					//Defined in lh_ascend/lh_list.ash
location[int] List(location[int] data);						//Defined in lh_ascend/lh_list.ash
location[int] ListRemove(location[int] list, location what);//Defined in lh_ascend/lh_list.ash
location[int] ListRemove(location[int] list, location what, int idx);//Defined in lh_ascend/lh_list.ash
location[int] ListErase(location[int] list, int index);		//Defined in lh_ascend/lh_list.ash
location[int] ListInsertFront(location[int] list, location what);//Defined in lh_ascend/lh_list.ash
location[int] ListInsert(location[int] list, location what);//Defined in lh_ascend/lh_list.ash
location[int] ListInsertAt(location[int] list, location what, int idx);//Defined in lh_ascend/lh_list.ash
location[int] ListInsertInorder(location[int] list, location what);//Defined in lh_ascend/lh_list.ash
int ListFind(location[int] list, location what);			//Defined in lh_ascend/lh_list.ash
int ListFind(location[int] list, location what, int idx);	//Defined in lh_ascend/lh_list.ash
location ListOutput(location[int] list);					//Defined in lh_ascend/lh_list.ash
int [item] lh_get_campground();								//Defined in lh_ascend/lh_util.ash
boolean basicAdjustML();									//Defined in lh_ascend/lh_util.ash
boolean beatenUpResolution();								//Defined in lh_ascend.ash
boolean adventureFailureHandler();							//Defined in lh_ascend.ash
boolean councilMaintenance();								//Defined in lh_ascend.ash
boolean [location] get_floundry_locations();				//Defined in lh_ascend/lh_clan.ash
int[item] lh_get_clan_lounge();								//Defined in lh_ascend/lh_clan.ash
boolean acquireMP(int goal);								//Defined in lh_ascend/lh_util.ash
boolean acquireMP(int goal, boolean buyIt);					//Defined in lh_ascend/lh_util.ash
boolean acquireGumItem(item it);							//Defined in lh_ascend/lh_util.ash
boolean acquireHermitItem(item it);							//Defined in lh_ascend/lh_util.ash
int cloversAvailable();									//Defined in lh_ascend/lh_util.ash
boolean cloverUsageInit();									//Defined in lh_ascend/lh_util.ash
boolean cloverUsageFinish();								//Defined in lh_ascend/lh_util.ash
boolean adjustEdHat(string goal);							//Defined in lh_ascend/lh_edTheUndying.ash
int amountTurkeyBooze();									//Defined in lh_ascend/lh_util.ash
boolean awol_buySkills();									//Defined in lh_ascend/lh_awol.ash
void awol_helper(string page);								//Defined in lh_ascend/lh_combat.ash
boolean canSurvive(float mult, int add);					//Defined in lh_ascend/lh_combat.ash
boolean canSurvive(float mult);								//Defined in lh_ascend/lh_combat.ash
boolean awol_initializeSettings();							//Defined in lh_ascend/lh_awol.ash
void awol_useStuff();										//Defined in lh_ascend/lh_awol.ash
effect awol_walkBuff();										//Defined in lh_ascend/lh_awol.ash
boolean backupSetting(string setting, string newValue);		//Defined in lh_ascend/lh_util.ash
int[monster] banishedMonsters();							//Defined in lh_ascend/lh_util.ash
boolean beehiveConsider();									//Defined in lh_ascend/lh_util.ash
string beerPong(string page);								//Defined in lh_ascend/lh_util.ash
int estimatedTurnsLeft();									//Defined in lh_ascend/lh_util.ash
boolean summonMonster();									//Defined in lh_ascend/lh_util.ash
boolean summonMonster(string option);						//Defined in lh_ascend/lh_util.ash
boolean in_tcrs();											//Defined in lh_ascend/lh_tcrs.ash
boolean tcrs_initializeSettings();							//Defined in lh_ascend/lh_tcrs.ash
float tcrs_expectedAdvPerFill(string quality);				//Defined in lh_ascend/lh_tcrs.ash
boolean tcrs_loadCafeDrinks(int[int] cafe_backmap, float[int] adv, int[int] inebriety);	//Defined in lh_ascend/lh_tcrs.ash
boolean tcrs_consumption();									//Defined in lh_ascend/lh_tcrs.ash
boolean tcrs_maximize_with_items(string maximizerString);	//Defined in lh_ascend/lh_tcrs.ash
boolean in_koe();											//Defined in lh_ascend/lh_koe.ash
boolean boris_buySkills();									//Defined in lh_ascend/lh_boris.ash
void boris_initializeDay(int day);							//Defined in lh_ascend/lh_boris.ash
void boris_initializeSettings();							//Defined in lh_ascend/lh_boris.ash
boolean buffMaintain(effect buff, int mp_min, int casts, int turns);//Defined in lh_ascend/lh_util.ash
boolean buffMaintain(item source, effect buff, int uses, int turns);//Defined in lh_ascend/lh_util.ash
boolean buffMaintain(skill source, effect buff, int mp_min, int casts, int turns);//Defined in lh_ascend/lh_util.ash
boolean buyUpTo(int num, item it);							//Defined in lh_ascend/lh_util.ash
boolean buyUpTo(int num, item it, int maxprice);			//Defined in lh_ascend/lh_util.ash
boolean buy_item(item it, int quantity, int maxprice);		//Defined in lh_ascend/lh_util.ash
boolean buyableMaintain(item toMaintain, int howMany);		//Defined in lh_ascend/lh_util.ash
boolean buyableMaintain(item toMaintain, int howMany, int meatMin);//Defined in lh_ascend/lh_util.ash
boolean buyableMaintain(item toMaintain, int howMany, int meatMin, boolean condition);//Defined in lh_ascend/lh_util.ash
boolean canYellowRay(monster target); //Defined in lh_ascend/lh_util.ash
boolean canYellowRay();										//Defined in lh_ascend/lh_util.ash
boolean lhAdvBypass(int urlGetFlags, string[int] url, location loc, string option);//Defined in lh_ascend/lh_adventure.ash
boolean lhChew(int howMany, item toChew);					//Defined in lh_ascend/lh_cooking.ash
float expectedAdventuresFrom(item it);						//Defined in lh_ascend/lh_cooking.ash
int lhCraft(string mode, int count, item item1, item item2);//Defined in lh_ascend/lh_util.ash
boolean canOde(item toDrink); //Defined in lh_ascend/lh_cooking.ash
boolean canSimultaneouslyAcquire(int[item] needed);			//Defined in lh_ascend/lh_util.ash
boolean clear_property_if(string setting, string cond);		//Defined in lh_ascend/lh_util.ash
boolean lhDrink(int howMany, item toDrink);					//Defined in lh_ascend/lh_cooking.ash
boolean lhEat(int howMany, item toEat);						//Defined in lh_ascend/lh_cooking.ash
boolean lhEat(int howMany, item toEat, boolean silent);		//Defined in lh_ascend/lh_cooking.ash
boolean lh_knapsackAutoConsume(string type, boolean simulate);	//Defined in lh_ascend/lh_cooking.ash
boolean loadConsumables(item[int] item_backmap, int[int] cafe_backmap, float[int] adv, int[int] inebriety);	 //Defined in lh_ascend/lh_cooking.ash
void lh_autoDrinkNightcap(boolean simulate);				//Defined in lh_ascend/lh_cooking.ash
boolean lh_autoDrinkOne(boolean simulate);					//Defined in lh_ascend/lh_cooking.ash
boolean saucemavenApplies(item it);							//Defined in lh_ascend/lh_cooking.ash
boolean lhMaximize(string req, boolean simulate);			//Defined in lh_ascend/lh_util.ash
boolean lhMaximize(string req, int maxPrice, int priceLevel, boolean simulate);//Defined in lh_ascend/lh_util.ash
aggregate lhMaximize(string req, int maxPrice, int priceLevel, boolean simulate, boolean includeEquip);//Defined in lh_ascend/lh_util.ash
boolean lhOverdrink(int howMany, item toOverdrink);			//Defined in lh_ascend/lh_cooking.ash
boolean canDrink(item toDrink);								//Defined in lh_ascend/lh_cooking.ash
boolean canEat(item toEat);									//Defined in lh_ascend/lh_cooking.ash
boolean canChew(item toChew); //Defined in lh_ascend/lh_cooking.ash
boolean lh_have_familiar(familiar fam);						//Defined in lh_ascend/lh_cooking.ash
boolean lh_advWitchess(string target);						//Defined in lh_ascend/lh_mr2016.ash
boolean lh_advWitchess(string target, string option);		//Defined in lh_ascend/lh_mr2016.ash
int lh_advWitchessTargets(string target);					//Defined in lh_ascend/lh_mr2016.ash
boolean lh_autosell(int quantity, item toSell);				//Defined in lh_ascend/lh_util.ash
boolean lh_barrelPrayers();									//Defined in lh_ascend/lh_mr2015.ash
void lh_begin();											//Defined in lh_ascend.ash
item lh_bestBadge();										//Defined in lh_ascend/lh_mr2016.ash
boolean lh_change_mcd(int mcd);								//Defined in lh_ascend/lh_util.ash
string lh_combatHandler(int round, string opp, string text);//Defined in lh_ascend/lh_combat.ash
boolean lh_doPrecinct();									//Defined in lh_ascend/lh_mr2016.ash
string lh_edCombatHandler(int round, string opp, string text);//Defined in lh_ascend/lh_combat.ash
boolean lh_floundryAction();								//Defined in lh_ascend/lh_clan.ash
boolean lh_floundryUse();									//Defined in lh_ascend/lh_clan.ash
boolean lh_floundryAction(item it);							//Defined in lh_ascend/lh_clan.ash
boolean lh_haveSourceTerminal();							//Defined in lh_ascend/lh_mr2016.ash
boolean lh_haveWitchess();									//Defined in lh_ascend/lh_mr2016.ash
boolean lh_mayoItems();										//Defined in lh_ascend/lh_mr2015.ash
boolean lh_maximizedConsumeStuff();							//Defined in lh_ascend/lh_cooking.ash
void lh_process_kmail(string functionname);					//Defined in lh_ascend/lh_zlib.ash
boolean lh_sourceTerminalEducate(skill first);				//Defined in lh_ascend/lh_mr2016.ash
boolean lh_sourceTerminalEducate(skill first, skill second);//Defined in lh_ascend/lh_mr2016.ash
boolean lh_sourceTerminalEnhance(string request);			//Defined in lh_ascend/lh_mr2016.ash
int lh_sourceTerminalEnhanceLeft();							//Defined in lh_ascend/lh_mr2016.ash
boolean lh_sourceTerminalExtrude(string request);			//Defined in lh_ascend/lh_mr2016.ash
int lh_sourceTerminalExtrudeLeft();							//Defined in lh_ascend/lh_mr2016.ash
int[string] lh_sourceTerminalMissing();						//Defined in lh_ascend/lh_mr2016.ash
boolean lh_sourceTerminalRequest(string request);			//Defined in lh_ascend/lh_mr2016.ash
int[string] lh_sourceTerminalStatus();						//Defined in lh_ascend/lh_mr2016.ash
boolean lh_tavern();										//Defined in lh_ascend.ash
string ccsJunkyard(int round, string opp, string text);		//Defined in lh_ascend/lh_combat.ash
int changeClan();											//Defined in lh_ascend/lh_clan.ash
int changeClan(int toClan);									//Defined in lh_ascend/lh_clan.ash
int changeClan(string clanName);							//Defined in lh_ascend/lh_clan.ash
boolean chateaumantegna_available();						//Defined in lh_ascend/lh_mr2015.ash
void chateaumantegna_buyStuff(item toBuy);					//Defined in lh_ascend/lh_mr2015.ash
boolean[item] chateaumantegna_decorations();				//Defined in lh_ascend/lh_mr2015.ash
boolean chateaumantegna_havePainting();						//Defined in lh_ascend/lh_mr2015.ash
boolean chateaumantegna_nightstandSet();					//Defined in lh_ascend/lh_mr2015.ash
void chateaumantegna_useDesk();								//Defined in lh_ascend/lh_mr2015.ash
boolean chateaumantegna_usePainting();						//Defined in lh_ascend/lh_mr2015.ash
boolean chateaumantegna_usePainting(string option);			//Defined in lh_ascend/lh_mr2015.ash
boolean clear_property_if(string setting, string cond);		//Defined in lh_ascend/lh_util.ash
boolean considerGrimstoneGolem(boolean bjornCrown);			//Defined in lh_ascend/lh_util.ash
boolean acquireTransfunctioner();							//Defined in lh_ascend/lh_util.ash
void consumeStuff();										//Defined in lh_ascend/lh_cooking.ash
boolean containsCombat(item it);							//Defined in lh_ascend/lh_combat.ash
boolean containsCombat(skill sk);							//Defined in lh_ascend/lh_combat.ash
boolean containsCombat(string action);						//Defined in lh_ascend/lh_combat.ash

string cs_combatKing(int round, string opp, string text);	//Defined in lh_ascend/lh_community_service.ash
string cs_combatLTB(int round, string opp, string text);	//Defined in lh_ascend/lh_community_service.ash
string cs_combatNormal(int round, string opp, string text);	//Defined in lh_ascend/lh_community_service.ash
string cs_combatWitch(int round, string opp, string text);	//Defined in lh_ascend/lh_community_service.ash
string cs_combatYR(int round, string opp, string text);		//Defined in lh_ascend/lh_community_service.ash
void cs_dnaPotions();										//Defined in lh_ascend/lh_community_service.ash
boolean cs_eat_spleen();									//Defined in lh_ascend/lh_community_service.ash
boolean cs_eat_stuff(int quest);							//Defined in lh_ascend/lh_community_service.ash
boolean cs_giant_growth();									//Defined in lh_ascend/lh_community_service.ash
void cs_initializeDay(int day);								//Defined in lh_ascend/lh_community_service.ash
void cs_make_stuff(int curQuest);							//Defined in lh_ascend/lh_community_service.ash
boolean cs_spendRests();									//Defined in lh_ascend/lh_community_service.ash
boolean cs_witchess();										//Defined in lh_ascend/lh_community_service.ash
int estimate_cs_questCost(int quest);						//Defined in lh_ascend/lh_community_service.ash
int [int] get_cs_questList();								//Defined in lh_ascend/lh_community_service.ash
boolean lh_csHandleGrapes();								//Defined in lh_ascend/lh_community_service.ash
string what_cs_quest(int quest);							//Defined in lh_ascend/lh_community_service.ash
int get_cs_questCost(int quest);							//Defined in lh_ascend/lh_community_service.ash
int get_cs_questCost(string input);							//Defined in lh_ascend/lh_community_service.ash
int get_cs_questNum(string input);							//Defined in lh_ascend/lh_community_service.ash
int expected_next_cs_quest();								//Defined in lh_ascend/lh_community_service.ash
int expected_next_cs_quest_internal();						//Defined in lh_ascend/lh_community_service.ash
boolean do_chateauGoat();									//Defined in lh_ascend/lh_community_service.ash
boolean do_cs_quest(int quest);								//Defined in lh_ascend/lh_community_service.ash
boolean do_cs_quest(string quest);							//Defined in lh_ascend/lh_community_service.ash
boolean cs_preTurnStuff(int curQuest);						//Defined in lh_ascend/lh_community_service.ash
void set_cs_questListFast(int[int] fast);					//Defined in lh_ascend/lh_community_service.ash

boolean dealWithMilkOfMagnesium(boolean useAdv);			//Defined in lh_ascend/lh_cooking.ash
void debugMaximize(string req, int meat);					//Defined in lh_ascend/lh_util.ash
boolean deck_available();									//Defined in lh_ascend/lh_mr2015.ash
boolean deck_cheat(string cheat);							//Defined in lh_ascend/lh_mr2015.ash
boolean deck_draw();										//Defined in lh_ascend/lh_mr2015.ash
int deck_draws_left();										//Defined in lh_ascend/lh_mr2015.ash
boolean deck_useScheme(string action);						//Defined in lh_ascend/lh_mr2015.ash
boolean didWePlantHere(location loc);						//Defined in lh_ascend/lh_floristfriar.ash
boolean dinseylandfill_garbageMoney();						//Defined in lh_ascend/lh_elementalPlanes.ash
boolean dna_bedtime();										//Defined in lh_ascend/lh_mr2014.ash
boolean dna_generic();										//Defined in lh_ascend/lh_mr2014.ash
boolean dna_sorceressTest();								//Defined in lh_ascend/lh_mr2014.ash
boolean dna_startAcquire();									//Defined in lh_ascend/lh_mr2014.ash
boolean lh_reagnimatedGetPart();	//Defined in lh_ascend/lh_mr2012.ash
boolean doBedtime();										//Defined in lh_ascend.ash
boolean doHRSkills();										//Defined in lh_ascend/lh_heavyrains.ash
boolean doVacation();										//Defined in lh_ascend.ash
int doHottub();												//Defined in lh_ascend/lh_clan.ash
int doNumberology(string goal);								//Defined in lh_ascend/lh_util.ash
int doNumberology(string goal, boolean doIt);				//Defined in lh_ascend/lh_util.ash
int doNumberology(string goal, boolean doIt, string option);//Defined in lh_ascend/lh_util.ash
int doNumberology(string goal, string option);				//Defined in lh_ascend/lh_util.ash
int doRest();												//Defined in lh_ascend/lh_util.ash
boolean doTasks();											//Defined in lh_ascend.ash
boolean keepOnTruckin();									//Defined in lh_ascend/lh_cooking.ash
boolean doThemtharHills();									//Defined in lh_ascend.ash
boolean isSpeakeasyDrink(item drink); //Defined in lh_ascend/lh_clan.ash
boolean canDrinkSpeakeasyDrink(item drink); //Defined in lh_ascend/lh_clan.ash
boolean drinkSpeakeasyDrink(item drink);					//Defined in lh_ascend/lh_clan.ash
boolean drinkSpeakeasyDrink(string drink);					//Defined in lh_ascend/lh_clan.ash
boolean eatFancyDog(string dog);							//Defined in lh_ascend/lh_clan.ash
boolean zataraClanmate(string who);							//Defined in lh_ascend/lh_clan.ash
boolean zataraSeaside(string who);							//Defined in lh_ascend/lh_clan.ash
float edMeatBonus();										//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_buySkills();										//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_lhAdv(int num, location loc, string option);		//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_lhAdv(int num, location loc, string option, boolean skipFirstLife);//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_doResting();										//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_eatStuff();										//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_handleAdventureServant(int num, location loc, string option);//Defined in lh_ascend/lh_edTheUndying.ash
void ed_initializeDay(int day);								//Defined in lh_ascend/lh_edTheUndying.ash
void ed_initializeSession();								//Defined in lh_ascend/lh_edTheUndying.ash
void ed_initializeSettings();								//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_needShop();										//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_preAdv(int num, location loc, string option);	//Defined in lh_ascend/lh_edTheUndying.ash
boolean ed_shopping();										//Defined in lh_ascend/lh_edTheUndying.ash
int ed_spleen_limit();										//Defined in lh_ascend/lh_edTheUndying.ash
void ed_terminateSession();									//Defined in lh_ascend/lh_edTheUndying.ash
effect[int] effectList();									//Defined in lh_ascend/lh_list.ash
boolean elementalPlanes_access(element ele);				//Defined in lh_ascend/lh_elementalPlanes.ash
boolean elementalPlanes_initializeSettings();				//Defined in lh_ascend/lh_elementalPlanes.ash
boolean elementalPlanes_takeJob(element ele);				//Defined in lh_ascend/lh_elementalPlanes.ash
int elemental_resist(element goal);							//Defined in lh_ascend/lh_util.ash
float elemental_resist_value(int resistance);				//Defined in lh_ascend/lh_util.ash
void ensureSealClubs();										//Defined in lh_ascend/lh_equipment.ash
string getMaximizeSlotPref(slot s); //Defined in lh_ascend/lh_equipment.ash
item getTentativeMaximizeEquip(slot s); //Defined in lh_ascend/lh_equipment.ash
boolean lhEquip(slot s, item it); //Defined in lh_ascend/lh_equipment.ash
boolean lhEquip(item it); //Defined in lh_ascend/lh_equipment.ash
boolean lhForceEquip(slot s, item it); //Defined in lh_ascend/lh_equipment.ash
boolean lhForceEquip(item it); //Defined in lh_ascend/lh_equipment.ash
boolean tryAddItemToMaximize(slot s, item it); //Defined in lh_ascend/lh_equipment.ash
boolean useMaximizeToEquip(); //Defined in lh_ascend/lh_equipment.ash
string defaultMaximizeStatement(); //Defined in lh_ascend/lh_equipment.ash
void resetMaximize(); //Defined in lh_ascend/lh_equipment.ash
void finalizeMaximize(); //Defined in lh_ascend/lh_equipment.ash
void addToMaximize(string add); //Defined in lh_ascend/lh_equipment.ash
void removeFromMaximize(string rem); //Defined in lh_ascend/lh_equipment.ash
boolean maximizeContains(string check); //Defined in lh_ascend/lh_equipment.ash
boolean simMaximize(); //Defined in lh_ascend/lh_equipment.ash
boolean simMaximizeWith(string add); //Defined in lh_ascend/lh_equipment.ash
float simValue(string modifier); //Defined in lh_ascend/lh_equipment.ash
void equipOverrides(); //Defined in lh_ascend/lh_equipment.ash
void equipMaximizedGear(); //Defined in lh_ascend/lh_equipment.ash
void equipBaseline();										//Defined in lh_ascend/lh_equipment.ash
void equipRollover();										//Defined in lh_ascend/lh_equipment.ash
boolean eudora_available();									//Defined in lh_ascend/lh_eudora.ash
item eudora_current();										//Defined in lh_ascend/lh_eudora.ash
boolean[item] eudora_initializeSettings();					//Defined in lh_ascend/lh_eudora.ash
int[item] eudora_xiblaxian();								//Defined in lh_ascend/lh_eudora.ash
boolean evokeEldritchHorror();								//Defined in lh_ascend/lh_util.ash
boolean evokeEldritchHorror(string option);					//Defined in lh_ascend/lh_util.ash
boolean fallout_buySkills();								//Defined in lh_ascend/lh_fallout.ash
void fallout_initializeDay(int day);						//Defined in lh_ascend/lh_fallout.ash
void fallout_initializeSettings();							//Defined in lh_ascend/lh_fallout.ash
int fastenerCount();										//Defined in lh_ascend/lh_util.ash
boolean fightScienceTentacle();								//Defined in lh_ascend/lh_util.ash
boolean fightScienceTentacle(string option);				//Defined in lh_ascend/lh_util.ash
string findBanisher(int round, string opp, string text);	//Defined in lh_ascend/lh_combat.ash
void florist_initializeSettings();							//Defined in lh_ascend/lh_floristfriar.ash
boolean forceEquip(slot sl, item it);						//Defined in lh_ascend/lh_util.ash
int fullness_left();										//Defined in lh_ascend/lh_util.ash
location solveDelayZone();									//Defined in lh_ascend/lh_util.ash
item getAvailablePerfectBooze();							//Defined in lh_ascend/lh_cooking.ash
item[element] getCharterIndexable();						//Defined in lh_ascend/lh_elementalPlanes.ash
boolean getDiscoStyle();									//Defined in lh_ascend/lh_elementalPlanes.ash
boolean getDiscoStyle(int choice);							//Defined in lh_ascend/lh_elementalPlanes.ash
boolean mummifyFamiliar(familiar fam, string bonus);		//Defined in lh_ascend/lh_mr2017.ash
int januaryToteTurnsLeft(item it);							//Defined in lh_ascend/lh_mr2018.ash
boolean januaryToteAcquire(item it);						//Defined in lh_ascend/lh_mr2018.ash
boolean godLobsterCombat();									//Defined in lh_ascend/lh_mr2018.ash
boolean godLobsterCombat(item it);							//Defined in lh_ascend/lh_mr2018.ash
boolean godLobsterCombat(item it, int goal);				//Defined in lh_ascend/lh_mr2018.ash
boolean godLobsterCombat(item it, int goal, string option);	//Defined in lh_ascend/lh_mr2018.ash
boolean fantasyRealmToken();								//Defined in lh_ascend/lh_mr2018.ash
boolean fantasyRealmAvailable();							//Defined in lh_ascend/lh_mr2018.ash
boolean songboomSetting(string goal);						//Defined in lh_ascend/lh_mr2018.ash
boolean songboomSetting(int choice);						//Defined in lh_ascend/lh_mr2018.ash
int catBurglarHeistsLeft();									//Defined in lh_ascend/lh_mr2018.ash
boolean catBurglarHeist(item it);							//Defined in lh_ascend/lh_mr2018.ash
boolean fightClubNap();										//Defined in lh_ascend/lh_mr2018.ash
boolean fightClubStats();									//Defined in lh_ascend/lh_mr2018.ash
boolean fightClubSpa();										//Defined in lh_ascend/lh_mr2018.ash
boolean fightClubSpa(int option);							//Defined in lh_ascend/lh_mr2018.ash
boolean fightClubSpa(effect eff);							//Defined in lh_ascend/lh_mr2018.ash
boolean cheeseWarMachine(int stats, int it, int buff, int potion);//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyCombat(stat st, boolean hardmode, string option, boolean powerlevelling);//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyCombat(effect eff, boolean hardmode, string option, boolean powerlevelling);//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyCombat(stat st, boolean hardmode);	//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyCombat(effect eff, boolean hardmode);//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyCombat(stat st);					//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyCombat(effect eff);					//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyCombat();							//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyPowerlevel();					//Defined in lh_ascend/lh_mr2018.ash
boolean neverendingPartyAvailable();						//Defined in lh_ascend/lh_mr2018.ash
string lh_latteDropName(location l); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteDropAvailable(location l); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteDropWanted(location l); // Defined in lh_ascend/lh_mr2018.ash
string lh_latteTranslate(string ingredient); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteRefill(string want1, string want2, string want3, boolean force); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteRefill(string want1, string want2, string want3); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteRefill(string want1, string want2, boolean force); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteRefill(string want1, string want2); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteRefill(string want1, boolean force); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteRefill(string want1); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_latteRefill(); // Defined in lh_ascend/lh_mr2018.ash
boolean lh_voteSetup();										//Defined in lh_ascend/lh_mr2018.ash
boolean lh_voteSetup(int candidate);						//Defined in lh_ascend/lh_mr2018.ash
boolean lh_voteSetup(int candidate, int first, int second);	//Defined in lh_ascend/lh_mr2018.ash
boolean lh_voteMonster();									//Defined in lh_ascend/lh_mr2018.ash
boolean lh_voteMonster(boolean freeMon);					//Defined in lh_ascend/lh_mr2018.ash
boolean lh_voteMonster(boolean freeMon, location loc);		//Defined in lh_ascend/lh_mr2018.ash
boolean lh_voteMonster(boolean freeMon, location loc, string option);//Defined in lh_ascend/lh_mr2018.ash
int lh_sausageEaten(); // Defined in lh_ascend/lh_mr2019.ash
int lh_sausageLeftToday(); // Defined in lh_ascend/lh_mr2019.ash
int lh_sausageUnitsNeededForSausage(int numSaus); // Defined in lh_ascend/lh_mr2019.ash
int lh_sausageMeatPasteNeededForSausage(int numSaus); // Defined in lh_ascend/lh_mr2019.ash
int lh_sausageFightsToday(); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_sausageGrind(int numSaus); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_sausageGrind(int numSaus, boolean failIfCantMakeAll); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_sausageEatEmUp(int maximumToEat); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_sausageEatEmUp(); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_sausageGoblin(); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_sausageGoblin(location loc); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_sausageGoblin(location loc, string option); // Defined in lh_ascend/lh_mr2019.ash
boolean pirateRealmAvailable(); // Defined in lh_ascend/lh_mr2019.ash
boolean LX_unlockPirateRealm(); // Defined in lh_ascend/lh_mr2019.ash
boolean lh_saberChoice(string choice);	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_saberDailyUpgrade(int day);	// Defined in lh_ascend/lh_mr2019.ash
monster lh_saberCurrentMonster();	// Defined in lh_ascend/lh_mr2019.ash
int lh_saberChargesAvailable();	// Defined in lh_ascend/lh_mr2019.ash
string lh_combatSaberBanish();	// Defined in lh_ascend/lh_mr2019.ash
string lh_combatSaberCopy();	// Defined in lh_ascend/lh_mr2019.ash
string lh_combatSaberYR();	// Defined in lh_ascend/lh_mr2019.ash
string lh_spoonGetDesiredSign();	// Defined in lh_ascend/lh_mr2019.ash
void lh_spoonTuneConfirm();	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_spoonReadyToTuneMoon();	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_spoonTuneMoon();	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_beachCombAvailable();	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_canBeachCombHead(string name);	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_beachCombHead(string name);	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_beachUseFreeCombs();	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_campawayAvailable();	// Defined in lh_ascend/lh_mr2019.ash
boolean lh_campawayGrabBuffs();	// Defined in lh_ascend/lh_mr2019.ash
boolean getSpaceJelly();									//Defined in lh_ascend/lh_mr2017.ash
int horseCost();											//Defined in lh_ascend/lh_mr2017.ash
string horseNormalize(string horseText); // Defined in lh_ascend/lh_mr2017.ash
boolean getHorse(string type);								//Defined in lh_ascend/lh_mr2017.ash
void horseDefault(); // Defined in lh_ascend/lh_mr2017.ash
void horseMaintain(); // Defined in lh_ascend/lh_mr2017.ash
void horseNone(); // Defined in lh_ascend/lh_mr2017.ash
void horseNormal(); // Defined in lh_ascend/lh_mr2017.ash
void horseDark(); // Defined in lh_ascend/lh_mr2017.ash
void horseCrazy(); // Defined in lh_ascend/lh_mr2017.ash
void horsePale(); // Defined in lh_ascend/lh_mr2017.ash
boolean horsePreAdventure(); // Defined in lh_ascend/lh_mr2017.ash
boolean[int] knapsack(int maxw, int n, int[int] weight, float[int] val); // Defined in lh_ascend/lh_util.ash
boolean kgbDiscovery();										//Defined in lh_ascend/lh_mr2017.ash
boolean kgbWasteClicks();									//Defined in lh_ascend/lh_mr2017.ash
boolean kgbTryEffect(effect ef);							//Defined in lh_ascend/lh_mr2017.ash
string kgbKnownEffects();									//Defined in lh_ascend/lh_mr2017.ash
boolean solveKGBMastermind();								//Defined in lh_ascend/lh_mr2017.ash
boolean kgbDial(int dial, int curVal, int target);			//Defined in lh_ascend/lh_mr2017.ash
boolean kgbSetup();											//Defined in lh_ascend/lh_mr2017.ash
int kgb_tabHeight(string page);								//Defined in lh_ascend/lh_mr2017.ash
int kgb_tabCount(string page);								//Defined in lh_ascend/lh_mr2017.ash
boolean kgb_getMartini();									//Defined in lh_ascend/lh_mr2017.ash
boolean kgb_getMartini(string page);						//Defined in lh_ascend/lh_mr2017.ash
boolean kgb_getMartini(string page, boolean dontCare);		//Defined in lh_ascend/lh_mr2017.ash
boolean kgbModifiers(string mod);							//Defined in lh_ascend/lh_mr2017.ash
boolean haveAsdonBuff();											//Defined in lh_ascend/lh_mr2017.ash
boolean asdonBuff(effect goal);								//Defined in lh_ascend/lh_mr2017.ash
boolean asdonBuff(string goal);								//Defined in lh_ascend/lh_mr2017.ash
boolean asdonFeed(item it, int qty);						//Defined in lh_ascend/lh_mr2017.ash
boolean asdonFeed(item it);									//Defined in lh_ascend/lh_mr2017.ash
boolean asdonAutoFeed();									//Defined in lh_ascend/lh_mr2017.ash
boolean asdonAutoFeed(int goal);							//Defined in lh_ascend/lh_mr2017.ash
boolean asdonCanMissile();										//Defined in lh_ascend/lh_mr2017.ash
boolean makeGenieWish(effect eff);							//Defined in lh_ascend/lh_mr2017.ash
boolean canGenieCombat();									//Defined in lh_ascend/lh_mr2017.ash
boolean makeGenieCombat(monster mon, string option);		//Defined in lh_ascend/lh_mr2017.ash
boolean makeGenieCombat(monster mon);						//Defined in lh_ascend/lh_mr2017.ash
boolean makeGeniePocket();									//Defined in lh_ascend/lh_mr2017.ash
boolean spacegateVaccineAvailable();						//Defined in lh_ascend/lh_mr2017.ash
boolean spacegateVaccineAvailable(effect ef);				//Defined in lh_ascend/lh_mr2017.ash
boolean spacegateVaccine(effect ef);						//Defined in lh_ascend/lh_mr2017.ash
boolean handleBarrelFullOfBarrels(boolean daily);			//Defined in lh_ascend/lh_util.ash
boolean handleCopiedMonster(item itm);						//Defined in lh_ascend/lh_util.ash
boolean handleCopiedMonster(item itm, string option);		//Defined in lh_ascend/lh_util.ash
boolean handleFamiliar(string type);						//Defined in lh_ascend.ash
boolean powerLevelAdjustment();								//Defined in lh_ascend.ash
boolean handleFaxMonster(monster enemy);					//Defined in lh_ascend/lh_clan.ash
boolean handleFaxMonster(monster enemy, boolean fightIt);	//Defined in lh_ascend/lh_clan.ash
boolean handleFaxMonster(monster enemy, boolean fightIt, string option);//Defined in lh_ascend/lh_clan.ash
boolean handleFaxMonster(monster enemy, string option);		//Defined in lh_ascend/lh_clan.ash
void handleJar();											//Defined in lh_ascend.ash
int handlePulls(int day);									//Defined in lh_ascend.ash
boolean handleSealAncient();								//Defined in lh_ascend/lh_util.ash
boolean handleSealAncient(string option);					//Defined in lh_ascend/lh_util.ash
boolean handleSealNormal(item it);							//Defined in lh_ascend/lh_util.ash
boolean handleSealNormal(item it, string option);			//Defined in lh_ascend/lh_util.ash
boolean handleSealElement(element flavor);					//Defined in lh_ascend/lh_util.ash
boolean handleSealElement(element flavor, string option);	//Defined in lh_ascend/lh_util.ash
boolean handleServant(servant who);							//Defined in lh_ascend/lh_edTheUndying.ash
boolean handleServant(string name);							//Defined in lh_ascend/lh_edTheUndying.ash
item handleSolveThing(boolean[item] poss);					//Defined in lh_ascend/lh_equipment.ash
item handleSolveThing(boolean[item] poss, slot loc);		//Defined in lh_ascend/lh_equipment.ash
item handleSolveThing(item[int] poss);						//Defined in lh_ascend/lh_equipment.ash
item handleSolveThing(item[int] poss, slot loc);			//Defined in lh_ascend/lh_equipment.ash
void handleTracker(item used, string tracker);				//Defined in lh_ascend/lh_util.ash
void handleTracker(monster enemy, item toTrack, string tracker);//Defined in lh_ascend/lh_util.ash
void handleTracker(monster enemy, skill toTrack, string tracker);//Defined in lh_ascend/lh_util.ash
void handleTracker(monster enemy, string toTrack, string tracker);//Defined in lh_ascend/lh_util.ash
void handleTracker(monster enemy, string tracker);			//Defined in lh_ascend/lh_util.ash
void handleTracker(string used, string tracker); //Defined in lh_ascend/lh_util.ash
void handleTracker(item used, string detail, string tracker); //Defined in lh_ascend/lh_util.ash
boolean hasArm(monster enemy);								//Defined in lh_ascend/lh_monsterparts.ash
boolean hasHead(monster enemy);								//Defined in lh_ascend/lh_monsterparts.ash
boolean hasLeg(monster enemy);								//Defined in lh_ascend/lh_monsterparts.ash
boolean hasShieldEquipped();								//Defined in lh_ascend/lh_util.ash
boolean hasTail(monster enemy);								//Defined in lh_ascend/lh_monsterparts.ash
boolean hasTorso(monster enemy);							//Defined in lh_ascend/lh_monsterparts.ash
boolean haveAny(boolean[item] array);						//Defined in lh_ascend/lh_util.ash
boolean have_skills(boolean[skill] array);					//Defined in lh_ascend/lh_util.ash
boolean lh_have_skill(skill sk);							//Defined in lh_ascend/lh_util.ash
boolean haveGhostReport();									//Defined in lh_ascend/lh_mr2016.ash
boolean haveSpleenFamiliar();								//Defined in lh_ascend/lh_util.ash
int howLongBeforeHoloWristDrop();							//Defined in lh_ascend/lh_util.ash
void hr_doBedtime();										//Defined in lh_ascend/lh_heavyrains.ash
boolean hr_handleFamiliar(familiar fam);					//Defined in lh_ascend/lh_heavyrains.ash
void hr_initializeDay(int day);								//Defined in lh_ascend/lh_heavyrains.ash
void hr_initializeSettings();								//Defined in lh_ascend/lh_heavyrains.ash
boolean in_ronin();											//Defined in lh_ascend/lh_util.ash
int inebriety_left();										//Defined in lh_ascend/lh_util.ash
void initializeDay(int day);								//Defined in lh_ascend.ash
void initializeSettings();									//Defined in lh_ascend.ash
boolean stunnable(monster mon);								//Defined in lh_ascend/lh_util.ash
boolean instakillable(monster mon);							//Defined in lh_ascend/lh_util.ash
int[int] intList();											//Defined in lh_ascend/lh_list.ash
int internalQuestStatus(string prop);						//Defined in lh_ascend/lh_util.ash
questRecord questRecord();									//Defined in lh_ascend/lh_util.ash
questRecord[int] questDatabase();							//Defined in lh_ascend/lh_util.ash
int questsLeft();											//Defined in lh_ascend/lh_util.ash
int freeCrafts();											//Defined in lh_ascend/lh_util.ash
boolean is100FamiliarRun();									//Defined in lh_ascend/lh_util.ash
boolean is100FamiliarRun(familiar thisOne);					//Defined in lh_ascend/lh_util.ash
boolean isBanished(monster enemy);							//Defined in lh_ascend/lh_util.ash
boolean isExpectingArrow();									//Defined in lh_ascend/lh_util.ash
boolean isFreeMonster(monster mon);							//Defined in lh_ascend/lh_util.ash
boolean isGalaktikAvailable();								//Defined in lh_ascend/lh_util.ash
boolean isGeneralStoreAvailable();							//Defined in lh_ascend/lh_util.ash
boolean isArmoryAvailable();								//Defined in lh_ascend/lh_util.ash
boolean isGhost(monster mon);								//Defined in lh_ascend/lh_util.ash
boolean isGuildClass();										//Defined in lh_ascend/lh_util.ash
boolean hasTorso();											//Defined in lh_ascend/lh_util.ash
boolean isHermitAvailable();								//Defined in lh_ascend/lh_util.ash
boolean isOverdueArrow();									//Defined in lh_ascend/lh_util.ash
boolean isOverdueDigitize();								//Defined in lh_ascend/lh_util.ash
boolean isProtonGhost(monster mon);							//Defined in lh_ascend/lh_util.ash
boolean isUnclePAvailable();								//Defined in lh_ascend/lh_util.ash
boolean is_avatar_potion(item it);							//Defined in lh_ascend/lh_util.ash
int lh_mall_price(item it);									//Defined in lh_ascend/lh_util.ash
item[int] itemList();										//Defined in lh_ascend/lh_list.ash
int jello_absorbsLeft();									//Defined in lh_ascend/lh_jellonewbie.ash
boolean jello_buySkills();									//Defined in lh_ascend/lh_jellonewbie.ash
void jello_initializeSettings();							//Defined in lh_ascend/lh_jellonewbie.ash
string[item] jello_lister();								//Defined in lh_ascend/lh_jellonewbie.ash
string[item] jello_lister(string goal);						//Defined in lh_ascend/lh_jellonewbie.ash
void jello_startAscension(string page);						//Defined in lh_ascend/lh_jellonewbie.ash
boolean lastAdventureSpecialNC();							//Defined in lh_ascend/lh_util.ash
boolean loopHandler(string turnSetting, string counterSetting, int threshold);//Defined in lh_ascend/lh_util.ash
boolean loopHandler(string turnSetting, string counterSetting, string abortMessage, int threshold);//Defined in lh_ascend/lh_util.ash
boolean loopHandlerDelay(string counterSetting);			//Defined in lh_ascend/lh_util.ash
boolean loopHandlerDelay(string counterSetting, int threshold);//Defined in lh_ascend/lh_util.ash
boolean loopHandlerDelayAll();								// Defined in lh_ascend/lh_util.ash
string reverse(string s);									// Defined in lh_ascend/lh_util.ash
boolean loveTunnelAcquire(boolean enforcer, stat statItem, boolean engineer, int loveEffect, boolean equivocator, int giftItem);//Defined in lh_ascend/lh_mr2017.ash
boolean loveTunnelAcquire(boolean enforcer, stat statItem, boolean engineer, int loveEffect, boolean equivocator, int giftItem, string option);//Defined in lh_ascend/lh_mr2017.ash
boolean pantogramPants();									//Defined in lh_ascend/lh_mr2017.ash
boolean pantogramPants(stat st, element el, int hpmp, int meatItemStats, int misc);//Defined in lh_ascend/lh_mr2017.ash
int lumberCount();											//Defined in lh_ascend/lh_util.ash
boolean makePerfectBooze();									//Defined in lh_ascend/lh_cooking.ash
void makeStartingSmiths();									//Defined in lh_ascend/lh_equipment.ash
int maxSealSummons();										//Defined in lh_ascend/lh_util.ash
void maximize_hedge();										//Defined in lh_ascend.ash
boolean mayo_acquireMayo(item it);							//Defined in lh_ascend/lh_mr2015.ash
int ns_crowd1();											//Defined in lh_ascend/lh_util.ash
stat ns_crowd2();											//Defined in lh_ascend/lh_util.ash
element ns_crowd3();										//Defined in lh_ascend/lh_util.ash
element ns_hedge1();										//Defined in lh_ascend/lh_util.ash
element ns_hedge2();										//Defined in lh_ascend/lh_util.ash
element ns_hedge3();										//Defined in lh_ascend/lh_util.ash
int numPirateInsults();										//Defined in lh_ascend/lh_util.ash
monster ocrs_helper(string page);							//Defined in lh_ascend/lh_combat.ash
boolean ocrs_initializeSettings();							//Defined in lh_ascend/lh_summerfun.ash
boolean ocrs_postCombatResolve();							//Defined in lh_ascend/lh_summerfun.ash
boolean ocrs_postHelper();									//Defined in lh_ascend/lh_summerfun.ash
void oldPeoplePlantStuff();									//Defined in lh_ascend/lh_floristfriar.ash
boolean organsFull();										//Defined in lh_ascend/lh_util.ash
boolean ovenHandle();										//Defined in lh_ascend/lh_util.ash
boolean pete_buySkills();									//Defined in lh_ascend/lh_sneakypete.ash
void pete_initializeDay(int day);							//Defined in lh_ascend/lh_sneakypete.ash
void pete_initializeSettings();								//Defined in lh_ascend/lh_sneakypete.ash
boolean picky_buyskills();									//Defined in lh_ascend/lh_picky.ash
void picky_initializeSettings();							//Defined in lh_ascend/lh_picky.ash
void picky_pulls();											//Defined in lh_ascend/lh_picky.ash
void picky_startAscension();								//Defined in lh_ascend/lh_picky.ash
skill preferredLibram();									//Defined in lh_ascend/lh_util.ash
location provideAdvPHPZone();								//Defined in lh_ascend/lh_util.ash
boolean providePlusCombat(int amt);							//Defined in lh_ascend/lh_util.ash
boolean providePlusCombat(int amt, boolean doEquips);		//Defined in lh_ascend/lh_util.ash
boolean providePlusNonCombat(int amt);						//Defined in lh_ascend/lh_util.ash
boolean providePlusNonCombat(int amt, boolean doEquips);	//Defined in lh_ascend/lh_util.ash
boolean acquireCombatMods(int amt);							//Defined in lh_ascend/lh_util.ash
boolean acquireCombatMods(int amt, boolean doEquips);		//Defined in lh_ascend/lh_util.ash
void pullAll(item it);										//Defined in lh_ascend/lh_util.ash
void pullAndUse(item it, int uses);							//Defined in lh_ascend/lh_util.ash
boolean pullXWhenHaveY(item it, int howMany, int whenHave);	//Defined in lh_ascend/lh_util.ash
int pullsNeeded(string data);								//Defined in lh_ascend.ash
boolean pulverizeThing(item it);							//Defined in lh_ascend/lh_util.ash
boolean rainManSummon(string monsterName, boolean copy, boolean wink);//Defined in lh_ascend/lh_heavyrains.ash
boolean rainManSummon(string monsterName, boolean copy, boolean wink, string option);//Defined in lh_ascend/lh_heavyrains.ash
boolean registerCombat(item it);							//Defined in lh_ascend/lh_combat.ash
boolean registerCombat(skill sk);							//Defined in lh_ascend/lh_combat.ash
boolean registerCombat(string action);						//Defined in lh_ascend/lh_combat.ash
void replaceBaselineAcc3();									//Defined in lh_ascend/lh_equipment.ash
boolean restoreAllSettings();								//Defined in lh_ascend/lh_util.ash
boolean restoreSetting(string setting);						//Defined in lh_ascend/lh_util.ash
boolean restore_property(string setting, string source);	//Defined in lh_ascend/lh_util.ash
boolean rethinkingCandy(effect acquire);					//Defined in lh_ascend/lh_mr2016.ash
boolean rethinkingCandy(effect acquire, boolean simulate);	//Defined in lh_ascend/lh_mr2016.ash
boolean rethinkingCandyList();								//Defined in lh_ascend/lh_mr2016.ash
boolean routineRainManHandler();							//Defined in lh_ascend/lh_heavyrains.ash
string runChoice(string page_text);							//Defined in lh_ascend/lh_util.ash
string safeString(item input);								//Defined in lh_ascend/lh_util.ash
string safeString(monster input);							//Defined in lh_ascend/lh_util.ash
string safeString(skill input);								//Defined in lh_ascend/lh_util.ash
string safeString(string input);							//Defined in lh_ascend/lh_util.ash
boolean setAdvPHPFlag();									//Defined in lh_ascend/lh_util.ash
boolean set_property_ifempty(string setting, string change);//Defined in lh_ascend/lh_util.ash
boolean settingFixer();										//Defined in lh_ascend/lh_deprecation.ash
void shrugAT();												//Defined in lh_ascend/lh_util.ash
void shrugAT(effect anticipated);							//Defined in lh_ascend/lh_util.ash
boolean snojoFightAvailable();								//Defined in lh_ascend/lh_mr2016.ash
int solveCookie();											//Defined in lh_ascend/lh_util.ash
int spleen_left();											//Defined in lh_ascend/lh_util.ash
void standard_initializeSettings();							//Defined in lh_ascend/lh_standard.ash
void standard_pulls();										//Defined in lh_ascend/lh_standard.ash
boolean startArmorySubQuest();								//Defined in lh_ascend/lh_util.ash
boolean startGalaktikSubQuest();							//Defined in lh_ascend/lh_util.ash
boolean startMeatsmithSubQuest();							//Defined in lh_ascend/lh_util.ash
string statCard();											//Defined in lh_ascend/lh_util.ash
int stomach_left();											//Defined in lh_ascend/lh_util.ash
boolean theSource_buySkills();								//Defined in lh_ascend/lh_theSource.ash
boolean theSource_initializeSettings();						//Defined in lh_ascend/lh_theSource.ash
boolean theSource_oracle();									//Defined in lh_ascend/lh_theSource.ash
boolean timeSpinnerAdventure();								//Defined in lh_ascend/lh_mr2016.ash
boolean timeSpinnerAdventure(string option);				//Defined in lh_ascend/lh_mr2016.ash
boolean timeSpinnerCombat(monster goal);					//Defined in lh_ascend/lh_mr2016.ash
boolean timeSpinnerCombat(monster goal, string option);		//Defined in lh_ascend/lh_mr2016.ash
boolean timeSpinnerConsume(item goal);						//Defined in lh_ascend/lh_mr2016.ash
boolean timeSpinnerGet(string goal);						//Defined in lh_ascend/lh_mr2016.ash
void tootGetMeat();											//Defined in lh_ascend/lh_util.ash
boolean tophatMaker();										//Defined in lh_ascend.ash
boolean trackingSplitterFixer(string oldSetting, int day, string newSetting);//Defined in lh_ascend/lh_deprecation.ash
void trickMafiaAboutFlorist();								//Defined in lh_ascend/lh_floristfriar.ash
string trim(string input);									//Defined in lh_ascend/lh_util.ash
string tryBeerPong();										//Defined in lh_ascend/lh_util.ash
boolean tryCookies();										//Defined in lh_ascend/lh_cooking.ash
boolean tryPantsEat();										//Defined in lh_ascend/lh_cooking.ash
int turkeyBooze();											//Defined in lh_ascend/lh_util.ash
boolean uneffect(effect toRemove);							//Defined in lh_ascend/lh_util.ash
boolean useCocoon();										//Defined in lh_ascend/lh_util.ash
boolean use_barrels();										//Defined in lh_ascend/lh_util.ash
boolean needStarKey();										//Defined in lh_ascend/lh_util.ash
boolean needDigitalKey();									//Defined in lh_ascend/lh_util.ash
int whitePixelCount();										//Defined in lh_ascend/lh_util.ash
boolean careAboutDrops(monster mon);						//Defined in lh_ascend/lh_util.ash
boolean volcano_bunkerJob();								//Defined in lh_ascend/lh_elementalPlanes.ash
boolean volcano_lavaDogs();									//Defined in lh_ascend/lh_elementalPlanes.ash
boolean warAdventure();										//Defined in lh_ascend.ash
boolean haveWarOutfit();									//Defined in lh_ascend.ash
boolean warOutfit();										//Defined in lh_ascend.ash
item whatHiMein();											//Defined in lh_ascend/lh_util.ash
effect whatStatSmile();										//Defined in lh_ascend/lh_util.ash
void woods_questStart();									//Defined in lh_ascend/lh_util.ash
boolean xiblaxian_makeStuff();								//Defined in lh_ascend/lh_mr2014.ash
string yellowRayCombatString(monster target, boolean inCombat); //Defined in lh_ascend/lh_util.ash
string yellowRayCombatString(monster target);					//Defined in lh_ascend/lh_util.ash
string yellowRayCombatString();								//Defined in lh_ascend/lh_util.ash
boolean adjustForYellowRay(string combat_string); //Defined in lh_ascend/lh_util.ash
boolean adjustForYellowRayIfPossible(monster target); //Defined in lh_ascend/lh_util.ash
boolean adjustForYellowRayIfPossible(); //Defined in lh_ascend/lh_util.ash
string banisherCombatString(monster enemy, location loc, boolean inCombat); //Defined in lh_ascend/lh_util.ash
string banisherCombatString(monster enemy, location loc);	//Defined in lh_ascend/lh_util.ash
boolean[string] lh_banishesUsedAt(location loc); // Defined in lh_ascend/lh_util.ash
boolean lh_wantToBanish(monster enemy, location loc); // Defined in lh_ascend/lh_util.ash
boolean lh_wantToSniff(monster enemy, location loc); // Defined in lh_ascend/lh_util.ash
boolean lh_wantToYellowRay(monster enemy, location loc); // Defined in lh_ascend/lh_util.ash
int total_items(boolean [item] items); // Defined in lh_ascend/lh_util.ash
boolean zoneCombat(location loc);							//Defined in lh_ascend/lh_util.ash
boolean zoneItem(location loc);								//Defined in lh_ascend/lh_util.ash
boolean zoneMeat(location loc);								//Defined in lh_ascend/lh_util.ash
boolean zoneNonCombat(location loc);						//Defined in lh_ascend/lh_util.ash
boolean declineTrades();									//Defined in lh_ascend/lh_util.ash
boolean lh_beta(); //Defined in lh_ascend/lh_util.ash
void lh_interruptCheck(); //Defined in lh_ascend/lh_util.ash

//From Zlib Stuff
record kmailObject {
	int id;                   // message id
	string type;              // possible values observed thus far: normal, giftshop
	int fromid;               // sender\'s playerid (0 for npcs)
	int azunixtime;           // KoL server\'s unix timestamp
	string message;           // message (not including items/meat)
	int[item] items;          // items included in the message
	int meat;                 // meat included in the message
	string fromname;          // sender\'s playername
	string localtime;         // your local time according to your KoL account, human-readable string
};
boolean lh_deleteMail(kmailObject msg);						//Defined in lh_ascend/lh_util.ash

boolean lh_is_valid(item it); //Defined in lh_ascend/lh_util.ash
boolean lh_is_valid(familiar fam); //Defined in lh_ascend/lh_util.ash
boolean lh_is_valid(skill sk); //Defined in lh_ascend/lh_util.ash

boolean lh_debug_print(string s, string color); //Defined in lh_ascend/lh_util.ash
boolean lh_debug_print(string s); //Defined in lh_ascend/lh_util.ash

boolean lh_can_equip(item it); //Defined in lh_ascend/lh_util.ash
boolean lh_can_equip(item it, slot s); //Defined in lh_ascend/lh_util.ash

boolean lh_check_conditions(string conds); //Defined in lh_ascend/lh_util.ash

boolean [monster] lh_getMonsters(string category); //Defined in lh_ascend/lh_util.ash

boolean lh_badassBelt(); //Defined in lh_ascend/lh_util.ash

//Dump from accessory scripts.
void handlePreAdventure();									//Defined in preHaps.ash
void handlePreAdventure(location place);					//Defined in preHaps.ash

void handlePostAdventure();									//Defined in postHaps.ash

void handleKingLiberation();								//Defined in lordHap.ash
boolean pullPVPJunk();										//Defined in lordHap.ash

boolean lh_acquireKeycards();								//Defined in lh_ascend/lh_aftercore.ash
boolean lh_aftercore();										//Defined in lh_ascend/lh_aftercore.ash
boolean lh_aftercore(int leave);							//Defined in lh_ascend/lh_aftercore.ash
boolean lh_ascendIntoCS();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_ascendIntoBond();								//Defined in lh_ascend/lh_aftercore.ash
boolean lh_cheeseAftercore(int leave);						//Defined in lh_ascend/lh_aftercore.ash
boolean lh_cheesePostCS();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_cheesePostCS(int leave);							//Defined in lh_ascend/lh_aftercore.ash
void lh_combatTest();										//Defined in lh_ascend/lh_aftercore.ash
boolean lh_dailyDungeon();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_doCS();											//Defined in lh_ascend/lh_aftercore.ash
boolean lh_doWalford();										//Defined in lh_ascend/lh_aftercore.ash
boolean lh_fingernail();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_goreBucket();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_guildClown();									//Defined in lh_ascend/lh_aftercore.ash
item lh_guildEpicWeapon();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_guildUnlock();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_junglePuns();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_jungleSandwich();								//Defined in lh_ascend/lh_aftercore.ash
boolean lh_lubeBarfMountain();								//Defined in lh_ascend/lh_aftercore.ash
boolean lh_mtMolehill();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_nastyBears();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_nemesisCave();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_nemesisIsland();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_packOfSmokes();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_racismReduction();								//Defined in lh_ascend/lh_aftercore.ash
boolean lh_sexismReduction();								//Defined in lh_ascend/lh_aftercore.ash
boolean lh_sloppySecondsDiner();							//Defined in lh_ascend/lh_aftercore.ash
boolean lh_toxicGlobules();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_toxicMascot();									//Defined in lh_ascend/lh_aftercore.ash
boolean lh_trashNet();										//Defined in lh_ascend/lh_aftercore.ash
string simpleCombatFilter(int round, string opp, string text);//Defined in lh_ascend/lh_aftercore.ash


boolean LM_bond();											//Defined in lh_ascend/lh_bondmember.ash
boolean bond_buySkills();									//Defined in lh_ascend/lh_bondmember.ash
boolean bond_initializeSettings();							//Defined in lh_ascend/lh_bondmember.ash
item[int] bondDrinks();										//Defined in lh_ascend/lh_bondmember.ash
void bond_initializeDay(int day);							//Defined in lh_ascend/lh_bondmember.ash


void majora_initializeSettings();							//Defined in lh_ascend/lh_majora.ash
void majora_initializeDay(int day);							//Defined in lh_ascend/lh_majora.ash
boolean LM_majora();										//Defined in lh_ascend/lh_majora.ash

void digimon_initializeSettings();							//Defined in lh_ascend/lh_digimon.ash
void digimon_initializeDay(int day);						//Defined in lh_ascend/lh_digimon.ash
boolean digimon_makeTeam();									//Defined in lh_ascend/lh_digimon.ash
boolean LM_digimon();										//Defined in lh_ascend/lh_digimon.ash
boolean digimon_lhAdv(int num, location loc, string option);//Defined in lh_ascend/lh_digimon.ash

void glover_initializeSettings();							//Defined in lh_ascend/lh_glover.ash
void glover_initializeDay(int day);							//Defined in lh_ascend/lh_glover.ash
boolean glover_usable(string it);							//Defined in lh_ascend/lh_glover.ash
boolean LM_glover();										//Defined in lh_ascend/lh_glover.ash

boolean groundhogSafeguard();								//Defined in lh_ascend/lh_groundhog.ash
void groundhog_initializeSettings();						//Defined in lh_ascend/lh_groundhog.ash
boolean canGroundhog(location loc);							//Defined in lh_ascend/lh_groundhog.ash
boolean groundhogAbort(location loc);						//Defined in lh_ascend/lh_groundhog.ash
boolean LM_groundhog();										//Defined in lh_ascend/lh_groundhog.ash

void bat_startAscension(); // Defined in lh_ascend/lh_batpath.ash
void bat_initializeSession(); // Defined in lh_ascend/lh_batpath.ash
void bat_terminateSession(); // Defined in lh_ascend/lh_batpath.ash
void bat_initializeDay(int day); // Defined in lh_ascend/lh_batpath.ash
int bat_maxHPCost(skill sk); // Defined in lh_ascend/lh_batpath.ash
int bat_baseHP(); // Defined in lh_ascend/lh_batpath.ash
int bat_remainingBaseHP(); // Defined in lh_ascend/lh_batpath.ash
boolean[skill] bat_desiredSkills(int hpLeft); // Defined in lh_ascend/lh_batpath.ash
boolean[skill] bat_desiredSkills(int hpLeft, boolean[skill] requiredSkills); // Defined in lh_ascend/lh_batpath.ash
void bat_reallyPickSkills(int hpLeft); // Defined in lh_ascend/lh_batpath.ash
void bat_reallyPickSkills(int hpLeft, boolean[skill] requiredSkills); // Defined in lh_ascend/lh_batpath.ash
boolean bat_shouldPickSkills(int hpLeft); // Defined in lh_ascend/lh_batpath.ash
boolean bat_shouldEnsorcel(monster m); // Defined in lh_ascend/lh_batpath.ash
int bat_creatable_amount(item desired); // Defined in lh_ascend/lh_batpath.ash
boolean bat_multicraft(string mode, boolean [item] options); // Defined in lh_ascend/lh_batpath.ash
boolean bat_cook(item desired); // Defined in lh_ascend/lh_batpath.ash
boolean bat_consumption(); // Defined in lh_ascend/lh_batpath.ash
boolean bat_skillValid(skill sk); // Defined in lh_ascend/lh_batpath.ash
boolean bat_tryBloodBank(); // Defined in lh_ascend/lh_batpath.ash
boolean bat_wantHowl(location loc); // Defined in lh_ascend/lh_batpath.ash
void bat_formNone(); // Defined in lh_ascend/lh_batpath.ash
void bat_formWolf(); // Defined in lh_ascend/lh_batpath.ash
void bat_formMist(); // Defined in lh_ascend/lh_batpath.ash
void bat_formBats(); // Defined in lh_ascend/lh_batpath.ash
void bat_clearForms(); // Defined in lh_ascend/lh_batpath.ash
boolean bat_switchForm(effect form); // Defined in lh_ascend/lh_batpath.ash
boolean bat_formPreAdventure(); // Defined in lh_ascend/lh_batpath.ash
boolean LM_batpath(); // Defined in lh_ascend/lh_batpath.ash
element currentFlavour(); // Defined in lh_ascend/lh_util.ash
void resetFlavour(); // Defined in lh_ascend/lh_util.ash
boolean setFlavour(element ele); // Defined in lh_ascend/lh_util.ash
boolean executeFlavour(); // Defined in lh_ascend/lh_util.ash
boolean autoFlavour(location place); // Defined in lh_ascend/lh_util.ash
int lh_reserveAmount(item it); // Defined in lh_ascend/lh_util.ash
int lh_reserveCraftAmount(item it); // Defined in lh_ascend/lh_util.ash
float mp_regen(); // Defined in lh_ascend/lh_util.ash

//Record from lh_ascend/lh_zone.ash
record generic_t
{
	boolean _error;
	boolean _boolean;
	int _int;
	float _float;
	string _string;
	item _item;
	location _location;
	class _class;
	stat _stat;
	skill _skill;
	effect _effect;
	familiar _familiar;
	slot _slot;
	monster _monster;
	element _element;
	phylum _phylum;
};
generic_t zone_needItem(location loc);						//Defined in lh_ascend/lh_zone.ash
generic_t zone_difficulty(location loc);					//Defined in lh_ascend/lh_zone.ash
generic_t zone_combatMod(location loc);						//Defined in lh_ascend/lh_zone.ash
generic_t zone_delay(location loc);							//Defined in lh_ascend/lh_zone.ash
generic_t zone_available(location loc);						//Defined in lh_ascend/lh_zone.ash
location[int] zone_list();									//Defined in lh_ascend/lh_zone.ash
int[location] zone_delayable();								//Defined in lh_ascend/lh_zone.ash
boolean zone_isAvailable(location loc);						//Defined in lh_ascend/lh_zone.ash
location[int] zones_available();							//Defined in lh_ascend/lh_zone.ash
monster[int] mobs_available();								//Defined in lh_ascend/lh_zone.ash
item[int] drops_available();								//Defined in lh_ascend/lh_zone.ash
item[int] hugpocket_available();							//Defined in lh_ascend/lh_zone.ash

