package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.events.Event;
	
	
	public class main extends MovieClip {
		
		public var intro:introScreen;
		public var mai:mainScreen;
		public var cred:creditsScreen;
		
		public function main() {
			// There are three screens: Opening, Main and Credits
			// Opening: Curtains closed, excited guy in front
			// Main: Magic guy, table lady, stage, audience
			// Credits: My name, curtains closed, sites, what the holiday is

			addEventListener(Event.ENTER_FRAME, onEF);
			Mouse.hide();
			m.mouseEnabled = false;
			addChild(m);
		}
		public function onEF(e:Event):void
		{
			m.x = mouseX;
			m.y = mouseY;
		}
		
		public function setUpIntro():void
		{
			intro = new introScreen();
			this.addChild(intro);
			intro.setUp();
			addChild(m);
		}
		public function setUpMain():void
		{
			mai = new mainScreen();
			this.addChild(mai);
			mai.setUp();
			addChild(m);
		}
		
		public function setUpCredits():void
		{
			cred = new creditsScreen();
			this.addChild(cred);
			cred.setUp();
			addChild(m);
		}
		
		
		// 1 means goto intro
		// 2 means goto main
		// 3 means goto credits
		public function clearIntro(n:Number):void
		{
			this.removeChild(intro);
			
			if(n === 1)
			{
				setUpIntro();
			}
			else if(n === 2)
			{
				setUpMain();
			}
			else if(n === 3)
			{
				setUpCredits();
			}
		}
		
		public function clearMain(n:Number):void
		{
			this.removeChild(mai);
			
			if(n === 1)
			{
				setUpIntro();
			}
			else if(n === 2)
			{
				setUpMain();
			}
			else if(n === 3)
			{
				setUpCredits();
			}
		}
		
		public function clearCredits(n:Number):void
		{
			this.removeChild(cred);
			
			if(n === 1)
			{
				setUpIntro();
			}
			else if(n === 2)
			{
				setUpMain();
			}
			else if(n === 3)
			{
				setUpCredits();
			}
		}
			
	}
	
}
