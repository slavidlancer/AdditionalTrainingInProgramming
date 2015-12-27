package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class trail extends MovieClip 
	{
		private var clip_mc:MovieClip;
		
		private const RADIUS:int=120;
		private const FRICTION:Number=.98;
		
		public function trail()
		{
			init();
		}
		
		private function init():void
		{
			stage.frameRate=31;
			createClip();
		}
		
		private function createClip():void
		{
			clip_mc=new Clip();
			clip_mc.x=stage.stageWidth/2+Math.cos(clip_mc.angle*2)*RADIUS;
			clip_mc.y=stage.stageHeight/2+Math.sin(clip_mc.angle*3)*RADIUS;
			clip_mc.angle=0;
			addChild(clip_mc);
			clip_mc.addEventListener(Event.ENTER_FRAME,go);
		}
		
		private function go(evt:Event):void
		{
			evt.target.x=stage.stageWidth/2+Math.cos(clip_mc.angle*2)*RADIUS;
			evt.target.y=stage.stageHeight/2+Math.sin(clip_mc.angle*3)*RADIUS;
			evt.target.angle+=.05;
			var copy_mc:MovieClip=new Clip();
			addChild(copy_mc);
			copy_mc.x=evt.target.x;
			copy_mc.y=evt.target.y;
			copy_mc.addEventListener(Event.ENTER_FRAME,goCopy);
		}
		
		private function goCopy(evt:Event):void
		{
			evt.target.alpha*=FRICTION;
			evt.target.scaleY=evt.target.alpha;
			if(evt.target.alpha<=.3)
			{
				evt.target.removeEventListener(Event.ENTER_FRAME,goCopy);
				var m:MovieClip=evt.target as MovieClip;
				removeChild(m);
			}
		}
	}
}