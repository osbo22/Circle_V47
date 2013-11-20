package  {
        import flash.display.Sprite;
        import flash.events.MouseEvent;
        /**
         * ...
         * @author Oskar Bohlin
         */
        public class CircleSettings extends Sprite
        {
                //Function to create generell settings for all the circles, also gives them random positions
                public function CircleSettings() 
                {                
                        var rColor:int = Math.random() * (0x00FF00);
                        var circleX:int = Math.random() * 780;
                        var circleY:int = Math.random() * 580;
                        this.graphics.beginFill(rColor);
                        this.graphics.drawCircle(circleX, circleY, 15);
                        this.graphics.endFill();
                        
                }
        }

}
