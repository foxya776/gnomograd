package com.iv.sh.ui.popup
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.states.AddItems;
   import mx.states.State;
   import spark.components.Group;
   import spark.primitives.BitmapImage;
   
   public class PopUpClose extends Group implements IStateClient2
   {
      
      public var _PopUpClose_BitmapImage1:BitmapImage;
      
      public var _PopUpClose_BitmapImage2:BitmapImage;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml__assets_close_popup_over_png_388861864:Class = PopUpClose__embed_mxml__assets_close_popup_over_png_388861864;
      
      private var _embed_mxml__assets_close_popup_png_2086276052:Class = PopUpClose__embed_mxml__assets_close_popup_png_2086276052;
      
      public function PopUpClose()
      {
         super();
         mx_internal::_document = this;
         this.buttonMode = true;
         this.mouseChildren = false;
         this.mxmlContent = [];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___PopUpClose_Group1_rollOver);
         this.addEventListener("rollOut",this.___PopUpClose_Group1_rollOut);
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._PopUpClose_BitmapImage1_i);
         var _loc2_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._PopUpClose_BitmapImage2_i);
         states = [new State({
            "name":"normal",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"over",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc2_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         })];
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
      
      private function _PopUpClose_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_close_popup_png_2086276052;
         _loc1_.initialized(this,"_PopUpClose_BitmapImage1");
         this._PopUpClose_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpClose_BitmapImage1",this._PopUpClose_BitmapImage1);
         return _loc1_;
      }
      
      private function _PopUpClose_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_close_popup_over_png_388861864;
         _loc1_.initialized(this,"_PopUpClose_BitmapImage2");
         this._PopUpClose_BitmapImage2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpClose_BitmapImage2",this._PopUpClose_BitmapImage2);
         return _loc1_;
      }
      
      public function ___PopUpClose_Group1_rollOver(param1:MouseEvent) : void
      {
         currentState = "over";
      }
      
      public function ___PopUpClose_Group1_rollOut(param1:MouseEvent) : void
      {
         currentState = "normal";
      }
   }
}

