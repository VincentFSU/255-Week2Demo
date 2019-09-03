package code {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Game extends MovieClip {
		
		private var blobs:Array = new Array();
		
		
		public function Game() {
			addEventListener(Event.ENTER_FRAME, gameLoop);			
		}
		
		private function gameLoop(e:Event):void{
			/*
				======== GAME LOOP REQUIREMENTS ========
				1. Track the passage of time
				2. Get / process user input
				3. Update all game objects / game state
				4. Render all game objects
				========================================
			*/
			//blob.update();
			spawnBlob();
			trace(blobs.length);
			
			for (var i:int = 0; i < blobs.length ; i++){
				blobs[i].update();
				if(blobs[i].isDead == true){
					removeChild(blobs[i]);
					blobs[i].dispose();
					blobs.splice(i,1);
					i--;
				}
			}
			
			/*for each(var b:Blob in blobs){
				 b.update();
			}*/
			
		}//ends gameLoop
		
		private function spawnBlob():void{
			var b = new Blob(); //spawning a blob
			blobs.push(b);//adding it to our collection
			addChild(b);//adding it to our scenegraph so that it renders
		}//ends spawnBlob function
	}//ends Game class
	
}//ends package
