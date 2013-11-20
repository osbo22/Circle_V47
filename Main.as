package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Oskar Bohlin
	 */
	public class Main extends Sprite 
	{
		private var score:int = new int();
		private var circleArray:Array = new Array;
		private var t:TextField = new TextField;
		private var circle2:Sprite = new Sprite();
		private var tf:TextFormat = new TextFormat();
		private var tf2:TextFormat = new TextFormat();
		private var t2:TextField = new TextField();
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			
			tf.font = "Segoe UI";
			tf.size = 30;
			
			tf2.font = "Segoe UI";
			tf2.size = 35;
			
			t.width = 200;
			t.height = 50;
			t.defaultTextFormat = tf;
			
			
			t2.defaultTextFormat = tf2;
			t2.x = 250;
			t2.y = 200;
			t2.width =350;
			t2.height =200;
			
			
			
			
			addChild(t);
			
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, circleSpawn);
		
		}
		
		
		private function deleteCircle(e:MouseEvent):void {
			for (var i:int = 0; i < circleArray.length; i++) 
			{	
				
				if (circleArray[0] == e.target)
				{
					while (circleArray.length > 0) 
					{
					removeChild(circleArray[0]);
					circleArray.splice(0, 1);
					}
					addChild(t2);
					t2.text = "Game over!" + "\n" + "Your score is: " +String(score) + "p";
				}
				if (circleArray[i] == e.target)
				{
					removeChild(circleArray[i]);
					circleArray.splice(i, 1);
					score += 1;
					t.text = String(score) + " p";
				}
			}
		}
		private function circleSpawn(key:KeyboardEvent):void 
		{
			if (key.keyCode == 32) {
				while (circleArray.length > 0) 
				{
					removeChild(circleArray[0]);
					circleArray.splice(0, 1);
				}
				score = 0;
				t.text = String(score) + " p";
				t2.text = "";
				for (var i:int = 0; i <= 20; i++)
				{
					var circle:CircleSettings = new CircleSettings();
					circleArray.push(circle);
					addChild(circle);
					circle.addEventListener(MouseEvent.CLICK, deleteCircle);
					
				}
				
			}
		}
		
		
	}
	
}