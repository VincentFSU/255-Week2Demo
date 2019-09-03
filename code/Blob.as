package code {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class Blob extends MovieClip {
		
		public var isDead:Boolean = false;
		public var BLOB_WIDTH:int = 36;
		
		public function Blob() {
			x = Math.random()* 550;
			y = Math.random()* 400;
			
			addEventListener(MouseEvent.CLICK, handleClick);
		}
	
		public function dispose():void {
			removeEventListener(MouseEvent.CLICK, handleClick);
		}
		
		// This function should run every game tick.
		// It dictates the behavior of a Blob object.
		public function update():void{
			x += 3; //move to the right 3 pixels per frame
			if (x > 550 + BLOB_WIDTH) //checks if off right side of screen
			{
				//x = -(BLOB_WIDTH / 2);//move to left side of screen
				isDead = true;
			}
		} //ends update()
		
		private function handleClick(e:MouseEvent):void {
			isDead = true;
			
		}//ends handleClick()
	} //ends Blob class	
}//ends package
