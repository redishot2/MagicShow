package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class face extends MovieClip {
		
		public var face_mc:MovieClip;
		
		public function face() {
			// Make the expressions change when clicking on the smiley
			this.addEventListener(MouseEvent.MOUSE_OVER, faceRoll);
		}
		public function faceRoll(event:MouseEvent):void
		{
			play();
			trace("face");
		}
	}
	
}
