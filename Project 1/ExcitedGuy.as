package  {
	
	import flash.display.MovieClip;
	
	
	public class ExcitedGuy extends MovieClip {
		
		
		public function ExcitedGuy() {
			// constructor code
		}
		
		public function allDone():void
		{
			trace("complete");
			// Code to make it go away
			if(parent != null)
			{
				MovieClip(root).clearIntro(2);
				parent.removeChild(this);
			}
		}
	}
	
}
