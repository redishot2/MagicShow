package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class MagicGuy extends MovieClip {
		
		public var guy_mc:MovieClip;
		public var fa:face;
		
		public function MagicGuy() {
			// The guy will move his arm when moused over
			// Click will make bunny go up and down and make face change
			// Mouse out will make face go back to normal and arm and bunny stop
			
			fa = new face();
			
			// Make everything stop
			face_mc.stop();
			arm_mc.stop();
			hat_mc.stop();
			
			// Click makes bunny go
			this.addEventListener(MouseEvent.CLICK, bodyClick);
			this.addEventListener(MouseEvent.ROLL_OUT, outRoll);
			this.addEventListener(MouseEvent.MOUSE_OVER, inBod);
		}
		
		// Roll into body
		public function inBod(event:MouseEvent):void
		{
			arm_mc.play();
		}
		
		// Roll out of body 
		public function outRoll(event:MouseEvent):void
		{
			face_mc.stop();
			hat_mc.stop();
			arm_mc.stop();
			trace("outBod");
		}
		
		// Click onto body
		public function bodyClick(event:MouseEvent):void
		{
			hat_mc.play();
		}
	}
	
}
