﻿package  {	import flash.display.Sprite;	import com.condenast.ISwf;	import flash.events.MouseEvent;	import com.greensock.TweenMax;	import com.greensock.TimelineLite;	import com.greensock.easing.Quint;	import flash.display.Bitmap;	import flash.display.Shape;		public class Col extends Sprite implements ISwf{				private var track:Function;		private var mc:MC;				public function Col() {			// constructor			_init(function():void{}); //only for debug session		}				public function _init($f:Function):void{			var count:uint;			var bmp0:Bitmap = new Bitmap(new Bmp0);			var bmp1:Bitmap = new Bitmap(new Bmp1);			var bmp2:Bitmap = new Bitmap(new Bmp2);			var bmp3:Bitmap = new Bitmap(new Bmp3);			track = $f;			mc = new MC;			mc.hit.alpha = 0;			mc.hit.buttonMode = true;			mc.hit.addEventListener(MouseEvent.MOUSE_DOWN, function():void{				track('message', 'exit_brand');			});			mc.gal.addChild(bmp0);			mc.gal.addChild(bmp1);			mc.gal.addChild(bmp2);			mc.gal.addChild(bmp3);			addChild(mc);						intro();						function intro():void{				clear();				var t:TimelineLite = new TimelineLite({onComplete:show});				t.insert(TweenMax.from(mc.bg, 1, {alpha:0}));				t.insert(TweenMax.from(mc.gal, 1, {x:300, ease:Quint.easeOut}),1);			}						function show():void{				TweenMax.to(mc, 1, {delay:2, onComplete:function():void{					clear();					count = (count+1<4)?count+1:0					TweenMax.to(mc.gal, 1, {x:-count*300, ease:Quint.easeOut, onComplete:show});				}});			}						function clear():void{				for(var i:uint; i<mc.gal.numChildren; i++){					var el:Bitmap = Bitmap(mc.gal.getChildAt(i));					el.x = i*300;				}			}					}			public function _catch($e:*):void{			if($e.message.split('http://').length >= 2){				track('navigateToURL', $e.message);			}		}	}	}