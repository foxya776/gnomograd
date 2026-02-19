package com.iv.sh.utils
{
   import flash.geom.Rectangle;
   import mx.core.UIComponent;
   
   public class BitmapImageScale extends UIComponent
   {
      
      private var _source:Class;
      
      public var s9X:int;
      
      public var s9W:int;
      
      public var s9Y:int;
      
      public var s9H:int;
      
      public function BitmapImageScale()
      {
         super();
      }
      
      public function set source(param1:Class) : void
      {
         this._source = param1;
         invalidateDisplayList();
      }
      
      public function get source() : Class
      {
         return this._source;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         graphics.clear();
         ScaleBitmap.draw(new this._source(),graphics,param1,param2,new Rectangle(this.s9X,this.s9Y,this.s9W,this.s9H));
      }
   }
}

