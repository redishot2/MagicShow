package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	public class creditsScreen extends MovieClip{

		public var cred:creditsPage;
		public var mainB:NavButton;
		public var introB:NavButton;
		
		public function creditsScreen() {}
		
		public function setUp():void
		{
			// Add credits screen
			cred = new creditsPage;
			this.addChild(cred);
			cred.x = -2;
			cred.y = -37;
			
			// Add nav buttons
				// Intro
			introB = new NavButton("Intro");
			this.addChild(introB);
			introB.x = 5;
			introB.y = 365;
				// Main
			mainB = new NavButton("Main");
			this.addChild(mainB);
			mainB.x = 435;
			mainB.y = 365;
			
			// Add event listeners for buttons
				// Intro
			introB.addEventListener(MouseEvent.CLICK, c2iClick);
			introB.addEventListener(MouseEvent.MOUSE_DOWN, iDown);
			introB.addEventListener(MouseEvent.MOUSE_UP, iUp);
			introB.addEventListener(MouseEvent.MOUSE_OVER, iHover);
			introB.addEventListener(MouseEvent.ROLL_OUT, iRoll);
				// Intro
			mainB.addEventListener(MouseEvent.CLICK, c2mClick);
			mainB.addEventListener(MouseEvent.MOUSE_DOWN, mDown);
			mainB.addEventListener(MouseEvent.MOUSE_UP, mUp);
			mainB.addEventListener(MouseEvent.MOUSE_OVER, mHover);
			mainB.addEventListener(MouseEvent.ROLL_OUT, mRoll);
		}
		
		// Intro buttons
		public function c2iClick(event:MouseEvent):void
		{
			// Del credits call intro
			MovieClip(root).clearCredits(1);
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
		
		// Main buttons
		public function c2mClick(event:MouseEvent):void
		{
			// Code to change to the main screen
			// Remove the credits
			MovieClip(root).clearCredits(2);
		}
		public function mDown(event:MouseEvent):void
		{
			mainB.gotoAndPlay(3);
		}
		public function mUp(event:MouseEvent):void
		{
			mainB.gotoAndPlay(2);
		}
		public function mHover(event:MouseEvent):void
		{
			mainB.gotoAndPlay(2);
		}
		public function mRoll(event:MouseEvent):void
		{
			mainB.gotoAndPlay(1);
		}
	}
	
}
