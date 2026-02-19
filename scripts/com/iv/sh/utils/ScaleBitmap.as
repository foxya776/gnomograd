package com.iv.sh.utils
{
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import mx.core.FlexBitmap;
   
   public class ScaleBitmap
   {
      
      public function ScaleBitmap()
      {
         super();
      }
      
      public static function draw(param1:FlexBitmap, param2:Graphics, param3:Number, param4:Number, param5:Rectangle, param6:Rectangle = null, param7:Boolean = false) : void
      {
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc10_:Number = 0;
         var _loc12_:Number = 0;
         var _loc18_:int = param1.width;
         var _loc19_:int = param1.height;
         var _loc20_:Matrix = new Matrix();
         var _loc21_:Array = [param5.left + 1,param5.width - 2,_loc18_ - param5.right + 1];
         var _loc22_:Array = [param5.top + 1,param5.height - 2,_loc19_ - param5.bottom + 1];
         var _loc23_:Number = param3 - _loc21_[0] - _loc21_[2];
         var _loc24_:Number = param4 - _loc22_[0] - _loc22_[2];
         var _loc25_:Number = param6 != null ? -param6.left : 0;
         var _loc26_:Number = param6 != null ? -param6.top : 0;
         while(_loc8_ < 3)
         {
            _loc14_ = Number(_loc21_[_loc8_]);
            _loc16_ = _loc8_ == 1 ? _loc23_ : _loc14_;
            _loc13_ = _loc11_ = 0;
            _loc20_.a = _loc16_ / _loc14_;
            _loc9_ = 0;
            while(_loc9_ < 3)
            {
               _loc15_ = Number(_loc22_[_loc9_]);
               _loc17_ = _loc9_ == 1 ? _loc24_ : _loc15_;
               if(_loc16_ > 0 && _loc17_ > 0)
               {
                  _loc20_.d = _loc17_ / _loc15_;
                  _loc20_.tx = -_loc10_ * _loc20_.a + _loc12_;
                  _loc20_.ty = -_loc11_ * _loc20_.d + _loc13_;
                  _loc20_.translate(_loc25_,_loc26_);
                  param2.beginBitmapFill(param1.bitmapData,_loc20_,false,param7);
                  param2.drawRect(_loc12_ + _loc25_,_loc13_ + _loc26_,_loc16_,_loc17_);
               }
               _loc11_ += _loc15_;
               _loc13_ += _loc17_;
               _loc9_++;
            }
            _loc10_ += _loc14_;
            _loc12_ += _loc16_;
            _loc8_++;
         }
         param2.endFill();
      }
   }
}

