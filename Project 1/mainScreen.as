package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	public class mainScreen extends MovieClip{
		
		public var bg:BackgroundMain;
		public var magic:MagicGuy;
		public var table:TableGuy;
		public var aud:Audience;
		public var c:card;
		public var introB:NavButton;
		public var creditsB:NavButton;
		public var gho:Ghost;
		public var multiGho:Boolean;
		public var sign:MagicWeekSign;
		private var music:Sound;
		private var musicChannel:SoundChannel;
		
		public function mainScreen() {
			multiGho = false;
		}
		
		public function setUp():void
		{
			// Add background
			bg = new BackgroundMain();
			this.addChild(bg);
			bg.x = -70;
			bg.y = - 90;
			
			// Add sign
			sign = new MagicWeekSign();
			this.addChild(sign);
			sign.x = 200;
			sign.y = -70;
			sign.scaleX = .4;
			sign.scaleY = .4;
			
			// Add magic guy
			magic = new MagicGuy();
			this.addChild(magic);
			magic.x = 40;
			magic.y = 60;
			magic.scaleX = .5;
			magic.scaleY = .5; 
			
			// Add table lady
			table = new TableGuy();
			this.addChild(table);
			table.x = 340;
			table.y = 40;
			table.scaleY = .5;
			table.scaleX = .5;
			
			// Add audience
			aud = new Audience();
			this.addChild(aud);
			aud.y = 300;
			aud.x = -30;
			
			// Add buttons
				// Credits
			creditsB = new NavButton("Credits");
			this.addChild(creditsB);
			creditsB.x = 435;
			creditsB.y = 365;
			creditsB.alpha = 100;
				// Intro
			introB = new NavButton("Intro");
			this.addChild(introB);
			introB.y = 365;
			introB.x = 5;
			introB.alpha = 100;
			
			// Event listeners
				// Sign
			table.table_mc.sign_mc.addEventListener(MouseEvent.CLICK, signClick);
			table.table_mc.sign_mc.addEventListener(MouseEvent.MOUSE_DOWN, signDown);
			table.table_mc.sign_mc.addEventListener(MouseEvent.MOUSE_UP, signUp);
			table.table_mc.sign_mc.addEventListener(MouseEvent.MOUSE_OVER, signIn);
			table.table_mc.sign_mc.addEventListener(MouseEvent.ROLL_OUT, signOut);
				// Buttons
					// Intro
			introB.addEventListener(MouseEvent.CLICK, m2iClick);
			introB.addEventListener(MouseEvent.MOUSE_DOWN, iDown);
			introB.addEventListener(MouseEvent.MOUSE_UP, iUp);
			introB.addEventListener(MouseEvent.MOUSE_OVER, iHover);
			introB.addEventListener(MouseEvent.ROLL_OUT, iRoll);
					// Credits
			creditsB.addEventListener(MouseEvent.CLICK, m2cClick);
			creditsB.addEventListener(MouseEvent.MOUSE_DOWN, cDown);
			creditsB.addEventListener(MouseEvent.MOUSE_UP, cUp);
			creditsB.addEventListener(MouseEvent.MOUSE_OVER, cHover);
			creditsB.addEventListener(MouseEvent.ROLL_OUT, cRoll);
				// Ghost
			bg.addEventListener(MouseEvent.CLICK, ghoClick);
				// Audience music cheer
			aud.addEventListener(MouseEvent.MOUSE_OVER, enterAud);
			aud.addEventListener(MouseEvent.MOUSE_OUT, leaveAud);
		}
		
		public function ghoClick(event:MouseEvent):void
		{
			// Make sure one gho at a time
			if(multiGho === false)
			{
				multiGho = true;
				// After clicking on the bg, the ghost will appear
				gho = new Ghost();
				this.addChild(gho);
				gho.scaleX = .25;
				gho.scaleY = .25;
				gho.x = mouseX;
				gho.y = mouseY;
			}
		}
		public function ghostDone()
		{
			this.removeChild(gho);
			multiGho = false;
		}
		
		// Sign button (add a card)
		public function signClick(event:MouseEvent):void
		{
			// Add flying card
			var num:Number = Math.random() * 9 + 1;
			c = new card(num);
			this.addChild(c);
			c.x = 100;
		}
		public function signDown(event:MouseEvent):void
		{
			table.table_mc.sign_mc.gotoAndPlay(3);
		}
		public function signUp(event:MouseEvent):void
		{
			table.table_mc.sign_mc.gotoAndPlay(2);
		}
		public function signIn(event:MouseEvent):void
		{
			table.table_mc.sign_mc.gotoAndPlay(2);
			table.body_mc.face_mc.gotoAndPlay(2);
		}
		public function signOut(event:MouseEvent):void
		{
			table.table_mc.sign_mc.gotoAndPlay(1);
			table.body_mc.face_mc.gotoAndPlay(1);
		}
		
		// Intro button
		public function m2iClick(event:MouseEvent):void
		{
			// Del main call intro
			MovieClip(root).clearMain(1);
		}
		public function iDown(event:MouseEvent):void
		{
			introB.gotoAndPlay(3);
		}
		public function iUp(event:MouseEvent):void
		{
			introB.gotoAndPlay(2);
		}
		public function iHover(event:MouseEvent):void
		{
			introB.gotoAndPlay(2);
		}
		public function iRoll(event:MouseEvent):void
		{
			introB.gotoAndPlay(1);
		}
		
		// Credits button
		public function m2cClick(event:MouseEvent):void
		{
			// Code to change to the main screen
			// Remove the credits
			MovieClip(root).clearMain(3);
		}
		public function cDown(event:MouseEvent):void
		{
			creditsB.gotoAndPlay(3);
		}
		public function cUp(event:MouseEvent):void
		{
			creditsB.gotoAndPlay(2);
		}
		public function cHover(event:MouseEvent):void
		{
			creditsB.gotoAndPlay(2);
		}
		public function cRoll(event:MouseEvent):void
		{
			creditsB.gotoAndPlay(1);
		}
		
		// Music
		public function enterAud(e:Event):void
		{
			music = new applause();
			musicChannel = music.play();
		}
		public function leaveAud(e:Event):void
		{
			if(musicChannel != null)
			{
				musicChannel.stop();
			}
		}
	}
	
}
