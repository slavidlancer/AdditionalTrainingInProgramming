package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.utils.*;
	import flash.text.*;
	
	public class test extends MovieClip
	{
		public var grav:Number=0.0098;
		public var b:Number=0.5;
		public var dx:Number=0.2;
		public var dy:Number=-0.8;
		public var ball:MovieClip=new Ball;
		public var timeD:int;
		public var lastTime:int;
		public var sp1:Sprite;
		public var mbl:int;
		public var mbt:int;
		public var mkbl:int;
		public var mkbt:int;
		public var pro:TextField;
		
		public function test():void
		{
			init();
		}
		private function init():void
		{
			stage.frameRate=8;
			pro=new TextField;
			pro.x=25;
			pro.y=30;
			pro.width=200;
			pro.text="hi";
			addChild(pro);
			addEventListener(Event.ENTER_FRAME,prog);
			function prog(evt:Event)
			{
				mbl=root.loaderInfo.bytesLoaded;
				mbt=root.loaderInfo.bytesTotal;
				mkbl=mbl/1024;
				mkbt=mbt/1024;
				pro.text="Loading : "+mkbl+" kb /"+mkbt+" kb";
				if(mbl>=mbt)
				{
					removeEventListener(Event.ENTER_FRAME,prog);
					newf();
					removeChild(pro);
				}
			}
			function newf():void
			{
				gotoAndStop(2);
				addChild(ball);
				lastTime=getTimer();
				sp1=new Sprite();
				sp1.graphics.lineStyle(2,0x000000);
				sp1.graphics.beginFill(0xCCCCCC);
				sp1.graphics.drawRect(150,50,200,300);
				addChild(sp1);
				stage.addEventListener(Event.ENTER_FRAME,anim);
				function anim(evt:Event)
				{
					timeD=getTimer()-lastTime;
					lastTime+=timeD;
					dy+=(grav*timeD);
					ball.x+=(timeD*dx);
					ball.y+=(timeD*dy);
				}
			}
		}
	}
}