package com.iv.sh.ui
{
   import mx.core.IFlexModuleFactory;
   import mx.graphics.SolidColor;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public class Delimetr extends Group
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function Delimetr()
      {
         super();
         mx_internal::_document = this;
         this.height = 2;
         this.mxmlContent = [this._Delimetr_Rect1_c(),this._Delimetr_Rect2_c()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function _Delimetr_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.height = 2;
         _loc1_.percentWidth = 100;
         _loc1_.fill = this._Delimetr_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _Delimetr_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16749634;
         return _loc1_;
      }
      
      private function _Delimetr_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.top = 1;
         _loc1_.height = 1;
         _loc1_.percentWidth = 100;
         _loc1_.fill = this._Delimetr_SolidColor2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _Delimetr_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16760961;
         return _loc1_;
      }
   }
}

