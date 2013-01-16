package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	public class introScreen extends MovieClip{
		
		public var bg:BackgroundMain;
		public var curt:Curtains;
		public var aud:Audience;
		public var excite:ExcitedGuy;
		
		public function introScreen() {}
		
		public function setUp():void
		{
			bg = new BackgroundMain();
			this.addChild(bg);
			bg.x = -70;
			bg.y = - 90;
			
			// Add Curtain
			curt = new Curtains();
			this.addChild(curt);
			curt.y = -120;
			
			// Add Excited guy
			excite = new ExcitedGuy();
			this.addChild(excite);
			excite.x = 200;
			excite.y = 120;
			excite.scaleX = .5;
			excite.scaleY = .5;
			
			// Add audience
			aud = new Audience();
			this.addChild(aud);
			aud.y = 300;
			aud.x = -30;
			
			excite.addEventListener(MouseEvent.MOUSE_OVER, onExcite);
			excite.addEventListener(MouseEvent.ROLL_OUT, outExcite);
			excite.addEventListener(MouseEvent.CLICK, clickExcite);
		}
		
		// Excite guy
		public function onExcite(event:MouseEvent):void
		{
			excite.gotoAndPlay(5);
		}
		public function outExcite(event:MouseEvent):void
		{
			excite.gotoAndPlay(1);
		}
		public function clickExcite(event:MouseEvent):void
		{
			// Remove eventListeners
			excite.removeEventListener(MouseEvent.MOUSE_OVER, onExcite);
			excite.removeEventListener(MouseEvent.ROLL_OUT, outExcite);
			
			// Excite leaves the screen by flying
			excite.gotoAndPlay(12);
		}
	}
	
}
