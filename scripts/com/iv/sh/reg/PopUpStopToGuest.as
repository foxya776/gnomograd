package com.iv.sh.reg
{
   import com.iv.sh.ui.popup.PopUp;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public class PopUpStopToGuest extends PopUp
   {
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml__assets_police_for_guest_png_1859455626:Class = PopUpStopToGuest__embed_mxml__assets_police_for_guest_png_1859455626;
      
      public function PopUpStopToGuest()
      {
         super();
         mx_internal::_document = this;
         this.priority = 100;
         this.width = 300;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpStopToGuest_Array1_c);
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
      
      private function _PopUpStopToGuest_Array1_c() : Array
      {
         return [this._PopUpStopToGuest_VGroup1_c()];
      }
      
      private function _PopUpStopToGuest_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._PopUpStopToGuest_Group1_c(),this._PopUpStopToGuest_Label1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpStopToGuest_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PopUpStopToGuest_Rect1_c(),this._PopUpStopToGuest_BitmapImage1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpStopToGuest_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.stroke = this._PopUpStopToGuest_SolidColorStroke1_c();
         _loc1_.fill = this._PopUpStopToGuest_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpStopToGuest_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16749634;
         return _loc1_;
      }
      
      private function _PopUpStopToGuest_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16760961;
         _loc1_.alpha = 1;
         return _loc1_;
      }
      
      private function _PopUpStopToGuest_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.left = 6;
         _loc1_.top = 6;
         _loc1_.right = 6;
         _loc1_.bottom = 6;
         _loc1_.source = this._embed_mxml__assets_police_for_guest_png_1859455626;
         _loc1_.filters = [this._PopUpStopToGuest_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpStopToGuest_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.alpha = 0.8;
         _loc1_.inner = true;
         return _loc1_;
      }
      
      private function _PopUpStopToGuest_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.text = "Нельзя применить это действие к гостю";
         _loc1_.setStyle("color",11747072);
         _loc1_.setStyle("fontSize",13);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
   }
}

