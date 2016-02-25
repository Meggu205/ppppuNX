package ppppu 
{
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author 
	 */
	public class ppppuUserSettings extends Object
	{
		public var backlightOn:Boolean=true;
		public var limitRenderArea:Boolean=true;
		public var showBackground:Boolean=true;
		public var firstTimeRun:Boolean=true;
		public var playMusic:Boolean=true;
		public var showMenu:Boolean = true;
		public var characterSettings:Object = new Object();
		public var keyBindings:Object = new Object();
		public var currentCharacterName:String = "";
		public var randomlySelectCharacter:Boolean = false;
		public var allowCharacterSwitches:Boolean = true;
		public var playOneSongForAllCharacters:Boolean = false;
		public var globalSongTitle:String = "Beep Block Skyway";
		//The latest version of the user settings. Change this whenever there is a modification with the class properties (renaming, adding/removing)
		public const SAVE_VERSION:int = 2;
		//The version of the settings that this settings object was created for.
		public var version:int = SAVE_VERSION;
		public function ppppuUserSettings() 
		{
			keyBindings.LockChar = new Object();
			keyBindings.GotoChar = new Object();
			keyBindings.CharCursorPrev = new Object();
			keyBindings.CharCursorNext = new Object();
			keyBindings.RandomChar = new Object();
			keyBindings.AutoCharSwitch = new Object();
			keyBindings.Help = new Object();
			keyBindings.NextHelpPage = new Object();
			keyBindings.Menu = new Object();
			keyBindings.AnimLockMode = new Object();
			keyBindings.PrevAnimPage = new Object();
			keyBindings.NextAnimPage = new Object();
			keyBindings.Backlight = new Object();
			keyBindings.DisplayLimit = new Object();
			keyBindings.Background = new Object();
			keyBindings.Music = new Object();
			keyBindings.CharTheme = new Object();
			keyBindings.PrevMusic = new Object();
			keyBindings.NextMusic = new Object();
			keyBindings.MusicForAll = new Object();
			//Set up default key bindings
			keyBindings.LockChar.main = Keyboard.LEFT; keyBindings.LockChar.alt = -1;
			keyBindings.GotoChar.main = Keyboard.RIGHT; keyBindings.GotoChar.alt = -1;
			keyBindings.CharCursorPrev.main = Keyboard.UP; keyBindings.CharCursorPrev.alt = -1;
			keyBindings.CharCursorNext.main = Keyboard.DOWN; keyBindings.CharCursorNext.alt = -1;
			keyBindings.RandomChar.main = Keyboard.SHIFT; keyBindings.RandomChar.alt = -1;
			keyBindings.AutoCharSwitch.main = Keyboard.SPACE; keyBindings.AutoCharSwitch.alt = -1;
			keyBindings.Help.main = Keyboard.H; keyBindings.Help.alt = -1;
			keyBindings.NextHelpPage.main = Keyboard.Z; keyBindings.NextHelpPage.alt = -1;
			keyBindings.Menu.main = Keyboard.CONTROL; keyBindings.Menu.alt = -1;
			keyBindings.AnimLockMode.main = Keyboard.S; keyBindings.AnimLockMode.alt = -1;
			keyBindings.PrevAnimPage.main = Keyboard.MINUS; keyBindings.PrevAnimPage.alt = Keyboard.NUMPAD_SUBTRACT;
			keyBindings.NextAnimPage.main = Keyboard.EQUAL; keyBindings.NextAnimPage.alt = Keyboard.NUMPAD_ADD;
			keyBindings.Backlight.main = Keyboard.L; keyBindings.Backlight.alt = -1;
			keyBindings.DisplayLimit.main = Keyboard.P; keyBindings.DisplayLimit.alt = -1;
			keyBindings.Background.main = Keyboard.B; keyBindings.Background.alt = -1;
			keyBindings.Music.main = Keyboard.M; keyBindings.Music.alt = -1;
			keyBindings.CharTheme.main = Keyboard.N; keyBindings.CharTheme.alt = -1;
			keyBindings.PrevMusic.main = Keyboard.X; keyBindings.PrevMusic.alt = -1;
			keyBindings.NextMusic.main = Keyboard.C; keyBindings.NextMusic.alt = -1;
			keyBindings.MusicForAll.main = Keyboard.G; keyBindings.MusicForAll.alt = -1;
			//keyBindings..main = Keyboard; keyBindings..alt = -1;
		}
		
		public function ConvertFromObject(obj:Object):void
		{ 
			backlightOn = obj.backlightOn;
			limitRenderArea = obj.limitRenderArea;
			showBackground = obj.showBackground;
			firstTimeRun = obj.firstTimeRun; 
			playMusic = obj.playMusic;
			showMenu = obj.showMenu;
			for (var charName:String in obj.characterSettings)
			{
				characterSettings[charName] = obj.characterSettings[charName];
			}
			currentCharacterName = obj.currentCharacterName;
			randomlySelectCharacter = obj.randomlySelectCharacter;
			allowCharacterSwitches = obj.allowCharacterSwitches;
			keyBindings = obj.keyBindings;
			if (keyBindings.Menu.main == -1 && keyBindings.Menu.alt == -1)
			{
				//Since the keybinding config can only be accessed from the menu, need to change a few things if the user did something to prevent them access to the config and menus.
				showMenu = true;
			}
			if ("playOneSongForAllCharacters" in obj) { playOneSongForAllCharacters = obj.playOneSongForAllCharacters; }
			if ("globalSongTitle" in obj) { globalSongTitle = obj.globalSongTitle;}
			// = obj.;
		}
		
	}

}