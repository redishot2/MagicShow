package  {
	
	import flash.display.MovieClip;
	
	
	public class card extends MovieClip {
		
		
		public function card(num:Number) {
			this.myCard2.cardNum.text = num;
		}
		
		private function allDone():void
		{
			trace("complete");
			// Code to make it go away
			if(parent != null)
			{
				parent.removeChild(this);
			}
		}
		
	}
	
}
