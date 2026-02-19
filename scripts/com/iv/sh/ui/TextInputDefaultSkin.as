package com.iv.sh.ui
{
   import com.iv.sh.utils.BitmapImageScale;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.RichEditableText;
   import spark.skins.SparkSkin;
   
   public class TextInputDefaultSkin extends SparkSkin implements IStateClient2
   {
      
      private var _831827669textDisplay:RichEditableText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var hostComponent:TextInputDefault;
      
      private var _embed_mxml__assets_text_input_bg_png_810591466:Class = TextInputDefaultSkin__embed_mxml__assets_text_input_bg_png_810591466;
      
      public function TextInputDefaultSkin()
      {
         super();
         mx_internal::_document = this;
         this.blendMode = "normal";
         this.mxmlContent = [this._TextInputDefaultSkin_BitmapImageScale1_c(),this._TextInputDefaultSkin_RichEditableText1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
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
      
      private function _TextInputDefaultSkin_BitmapImageScale1_c() : BitmapImageScale
      {
         var _loc1_:BitmapImageScale = new BitmapImageScale();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.source = this._embed_mxml__assets_text_input_bg_png_810591466;
         _loc1_.s9X = 6;
         _loc1_.s9Y = 6;
         _loc1_.s9W = 14;
         _loc1_.s9H = 14;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TextInputDefaultSkin_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         _loc1_.left = 6;
         _loc1_.right = 6;
         _loc1_.top = 1;
         _loc1_.bottom = 0;
         _loc1_.setStyle("paddingTop",6);
         _loc1_.setStyle("paddingBottom",6);
         _loc1_.id = "textDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textDisplay = _loc1_;
         BindingManager.executeBindings(this,"textDisplay",this.textDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get textDisplay() : RichEditableText
      {
         return this._831827669textDisplay;
      }
      
      public function set textDisplay(param1:RichEditableText) : void
      {
         var _loc2_:Object = this._831827669textDisplay;
         if(_loc2_ !== param1)
         {
            this._831827669textDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textDisplay",_loc2_,param1));
            }
         }
      }
   }
}

