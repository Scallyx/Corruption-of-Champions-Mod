package classes.Scenes.Dungeons 
{
	import classes.*;
	import classes.BaseContent;
	import classes.GlobalFlags.kFLAGS;
	import classes.GlobalFlags.kGAMECLASS;
	
	import coc.view.MainView;
	
	public class DungeonEngine extends BaseContent
	{
		public var factory:Factory = new Factory;
		public var deepcave:DeepCave = new DeepCave;
		public var desertcave:DesertCave = new DesertCave;
		public var heltower:HelDungeon = new HelDungeon;
		//public var lethicecastle:LethiceCastle = new LethiceCastle;
		public var cabin:YourCabin = new YourCabin;
		
		public function DungeonEngine() 
		{
			
		}
		
		public function checkRoom():void
		{
			//Cabin
			if (kGAMECLASS.dungeonLoc == -10) cabin.enterCabin();
			//Factory
			if (kGAMECLASS.dungeonLoc == 0) factory.roomLobby();
			if (kGAMECLASS.dungeonLoc == 1) factory.roomBreakRoom();
			if (kGAMECLASS.dungeonLoc == 2) factory.roomPumpRoom();
			if (kGAMECLASS.dungeonLoc == 3) factory.roomFurnaceRoom();
			if (kGAMECLASS.dungeonLoc == 4) factory.roomRepairCloset();
			if (kGAMECLASS.dungeonLoc == 5) factory.roomMainChamber();
			if (kGAMECLASS.dungeonLoc == 6) factory.roomForemanOffice();
			if (kGAMECLASS.dungeonLoc == 7) factory.roomControlRoom();
			if (kGAMECLASS.dungeonLoc == 8) factory.roomPremiumStorage();
			if (kGAMECLASS.dungeonLoc == 9) factory.roomBathroom();
			//Deep Cave
			if (kGAMECLASS.dungeonLoc == 10) deepcave.roomEntrance();
			if (kGAMECLASS.dungeonLoc == 11) deepcave.roomTunnel();
			if (kGAMECLASS.dungeonLoc == 12) deepcave.roomGatheringHall();
			if (kGAMECLASS.dungeonLoc == 13) deepcave.roomFungusCavern();
			if (kGAMECLASS.dungeonLoc == 14) deepcave.roomTortureRoom();
			if (kGAMECLASS.dungeonLoc == 15) deepcave.roomSecretPassage();
			if (kGAMECLASS.dungeonLoc == 16) deepcave.roomZetazChamber();
			//Tower of the Phoenix (Helia's Quest)
			if (kGAMECLASS.dungeonLoc == 17) heltower.roomGuardHall();
			if (kGAMECLASS.dungeonLoc == 18) heltower.roomCellar();
			if (kGAMECLASS.dungeonLoc == 19) heltower.roomStairwell();
			if (kGAMECLASS.dungeonLoc == 20) heltower.roomDungeon();
			if (kGAMECLASS.dungeonLoc == 21) heltower.roomMezzanine();
			if (kGAMECLASS.dungeonLoc == 22) heltower.roomThroneRoom();
			//Desert Cave
			if (kGAMECLASS.dungeonLoc == 23) desertcave.roomEntrance();
			if (kGAMECLASS.dungeonLoc == 24) desertcave.roomCaveCommons();
			if (kGAMECLASS.dungeonLoc == 25) desertcave.roomWestHall1();
			if (kGAMECLASS.dungeonLoc == 26) desertcave.roomPlayRoom();
			if (kGAMECLASS.dungeonLoc == 27) desertcave.roomLustRoom();
			if (kGAMECLASS.dungeonLoc == 28) desertcave.roomWestHall2();
			if (kGAMECLASS.dungeonLoc == 29) desertcave.roomNursery();
			if (kGAMECLASS.dungeonLoc == 30) desertcave.roomPharmacy();
			if (kGAMECLASS.dungeonLoc == 31) desertcave.roomEastHall1();
			if (kGAMECLASS.dungeonLoc == 32) desertcave.roomSleepingChamber();
			if (kGAMECLASS.dungeonLoc == 33) desertcave.roomBathroom();
			if (kGAMECLASS.dungeonLoc == 34) desertcave.roomEastHall2();
			if (kGAMECLASS.dungeonLoc == 35) desertcave.roomCumWitchBedroom();
			if (kGAMECLASS.dungeonLoc == 36) desertcave.roomCumWitchOffice();
			if (kGAMECLASS.dungeonLoc == 37) desertcave.roomSandMotherThrone();
			//Lethice's Castle
			/*if (kGAMECLASS.dungeonLoc == 38) lethicecastle.roomEntrance();
			if (kGAMECLASS.dungeonLoc == 39) lethicecastle.roomTunnel1();
			if (kGAMECLASS.dungeonLoc == 40) lethicecastle.roomTunnel2();
			if (kGAMECLASS.dungeonLoc == 41) lethicecastle.roomKeepEdge();
			if (kGAMECLASS.dungeonLoc == 42) lethicecastle.roomEntryway();
			if (kGAMECLASS.dungeonLoc == 43) lethicecastle.roomSouthCourtyard();
			if (kGAMECLASS.dungeonLoc == 44) lethicecastle.roomSouthEastCourtyard();
			if (kGAMECLASS.dungeonLoc == 45) lethicecastle.roomGreatLift();
			if (kGAMECLASS.dungeonLoc == 46) lethicecastle.roomSouthWestCourtyard();
			if (kGAMECLASS.dungeonLoc == 47) lethicecastle.roomSouthWestWalk();
			if (kGAMECLASS.dungeonLoc == 48) lethicecastle.roomWestWalk();
			if (kGAMECLASS.dungeonLoc == 49) lethicecastle.roomNorthWestWalk();
			if (kGAMECLASS.dungeonLoc == 50) lethicecastle.roomNorthWestCourtyard();
			if (kGAMECLASS.dungeonLoc == 51) lethicecastle.roomNorthCourtyard();
			if (kGAMECLASS.dungeonLoc == 52) lethicecastle.roomNorthEastCourtyard();
			if (kGAMECLASS.dungeonLoc == 53) lethicecastle.roomNorthEastWalk();
			if (kGAMECLASS.dungeonLoc == 54) lethicecastle.roomEastWalk();
			if (kGAMECLASS.dungeonLoc == 55) lethicecastle.roomSouthEastWalk();
			if (kGAMECLASS.dungeonLoc == 56) lethicecastle.roomCourtyardSquare();*/
			
		}
		
		public function checkFactoryClear():Boolean {
			return (flags[kFLAGS.FACTORY_SHUTDOWN] > 0 && flags[kFLAGS.FACTORY_SUCCUBUS_DEFEATED] > 0 && flags[kFLAGS.FACTORY_INCUBUS_DEFEATED] > 0 && flags[kFLAGS.FACTORY_OMNIBUS_DEFEATED] > 0);
		}
		public function checkDeepCaveClear():Boolean {
			return (flags[kFLAGS.ZETAZ_IMP_HORDE_DEFEATED] > 0 && flags[kFLAGS.ZETAZ_FUNGUS_ROOM_DEFEATED] > 0 && flags[kFLAGS.FREED_VALA] == 1 && player.hasKeyItem("Zetaz's Map") >= 0);
		}
		public function checkSandCaveClear():Boolean {
			return (flags[kFLAGS.CUM_WITCH_DEFEATED] > 0 && (flags[kFLAGS.ESSRAYLE_ESCAPED_DUNGEON] > 0 || flags[kFLAGS.MET_ESSY] == 0) && flags[kFLAGS.SAND_WITCHES_FRIENDLY] > 0);
		}
		public function checkPhoenixTowerClear():Boolean {
			return (flags[kFLAGS.HARPY_QUEEN_EXECUTED] != 0&& flags[kFLAGS.HEL_HARPIES_DEFEATED] > 0 && flags[kFLAGS.HEL_PHOENIXES_DEFEATED] > 0 && flags[kFLAGS.HEL_BRIGID_DEFEATED] > 0);
		}
		
		public function enterFactory():void {
			factory.enterDungeon();
		}
		public function enterDeepCave():void {
			deepcave.enterDungeon();
		}
		
		public function navigateToRoom(room:Function = null, timeToPass:Number = 1/12):void {
			cheatTime(timeToPass);
			room();
		}
		
		/**
		 * Set the buttons for use in dungeons.
		 * @param	north
		 * @param	northFunction
		 * @param	south
		 * @param	southFunction
		 * @param	west
		 * @param	westFunction
		 * @param	east
		 * @param	eastFunction
		 */
		public function setDungeonButtons(northFunction:Function = null, southFunction:Function = null, westFunction:Function = null, eastFunction:Function = null):void {
			hideUpDown();
			spriteSelect(-1);
			menu();
			mainView.showMenuButton( MainView.MENU_APPEARANCE );
			mainView.showMenuButton( MainView.MENU_PERKS );
			mainView.showMenuButton( MainView.MENU_STATS );
			mainView.hideMenuButton( MainView.MENU_DATA );
			if(player.XP >= (player.level) * 100) {
				mainView.showMenuButton( MainView.MENU_LEVEL );
				mainView.statsView.showLevelUp();
			}
			if (northFunction != null) addButton(0, "North", navigateToRoom, northFunction);
			if (southFunction != null) addButton(6, "South", navigateToRoom, southFunction);
			if (westFunction != null) addButton(5, "West", navigateToRoom, westFunction);
			if (eastFunction != null) addButton(1, "East", navigateToRoom, eastFunction);
			addButton(8, "Inventory", eventParser, 1000);
			if (player.lust >= 30) addButton(9, "Masturbate", eventParser, 10);
		}
		
	}

}