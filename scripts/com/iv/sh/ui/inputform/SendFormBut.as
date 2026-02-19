package com.iv.sh.ui.inputform
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class SendFormBut extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _SendFormBut_HGroup1:HGroup;
      
      public var _SendFormBut_HGroup2:HGroup;
      
      public var _SendFormBut_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _110371416title:String;
      
      private var _embed_mxml__assets_to_l_png_1113088204:Class;
      
      private var _embed_mxml__assets_to_m_png_1114906838:Class;
      
      private var _embed_mxml__assets_to_l_over_png_1102479272:Class;
      
      private var _embed_mxml__assets_to_m_over_png_1139940458:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SendFormBut()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_to_l_png_1113088204 = SendFormBut__embed_mxml__assets_to_l_png_1113088204;
         this._embed_mxml__assets_to_m_png_1114906838 = SendFormBut__embed_mxml__assets_to_m_png_1114906838;
         this._embed_mxml__assets_to_l_over_png_1102479272 = SendFormBut__embed_mxml__assets_to_l_over_png_1102479272;
         this._embed_mxml__assets_to_m_over_png_1139940458 = SendFormBut__embed_mxml__assets_to_m_over_png_1139940458;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._SendFormBut_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_inputform_SendFormButWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SendFormBut[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.buttonMode = true;
         this.mxmlContent = [this._SendFormBut_HGroup1_i(),this._SendFormBut_HGroup2_i(),this._SendFormBut_HGroup3_c()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___SendFormBut_Group1_rollOver);
         this.addEventListener("rollOut",this.___SendFormBut_Group1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SendFormBut._watcherSetupUtil = param1;
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
      
      private function _SendFormBut_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SendFormBut_BitmapImage1_c(),this._SendFormBut_BitmapImage2_c(),this._SendFormBut_BitmapImage3_c()];
         _loc1_.id = "_SendFormBut_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SendFormBut_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_SendFormBut_HGroup1",this._SendFormBut_HGroup1);
         return _loc1_;
      }
      
      private function _SendFormBut_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_to_l_png_1113088204;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SendFormBut_BitmapImage2_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.percentWidth = 100;
         _loc1_.source = this._embed_mxml__assets_to_m_png_1114906838;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SendFormBut_BitmapImage3_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_to_l_png_1113088204;
         _loc1_.scaleX = -1;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SendFormBut_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SendFormBut_BitmapImage4_c(),this._SendFormBut_BitmapImage5_c(),this._SendFormBut_BitmapImage6_c()];
         _loc1_.id = "_SendFormBut_HGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SendFormBut_HGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_SendFormBut_HGroup2",this._SendFormBut_HGroup2);
         return _loc1_;
      }
      
      private function _SendFormBut_BitmapImage4_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_to_l_over_png_1102479272;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SendFormBut_BitmapImage5_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.percentWidth = 100;
         _loc1_.source = this._embed_mxml__assets_to_m_over_png_1139940458;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SendFormBut_BitmapImage6_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_to_l_over_png_1102479272;
         _loc1_.scaleX = -1;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SendFormBut_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.gap = 4;
         _loc1_.left = 6;
         _loc1_.right = 8;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SendFormBut_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SendFormBut_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("color",16777215);
         _loc1_.setStyle("paddingTop",2);
         _loc1_.setStyle("paddingLeft",5);
         _loc1_.setStyle("fontSize",13);
         _loc1_.id = "_SendFormBut_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SendFormBut_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_SendFormBut_Label1",this._SendFormBut_Label1);
         return _loc1_;
      }
      
      public function ___SendFormBut_Group1_rollOver(param1:MouseEvent) : void
      {
         currentState = "over";
      }
      
      public function ___SendFormBut_Group1_rollOut(param1:MouseEvent) : void
      {
         currentState = "normal";
      }
      
      private function _SendFormBut_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return currentState == "normal";
         },null,"_SendFormBut_HGroup1.visible");
         result[1] = new Binding(this,function():Boolean
         {
            return currentState != "normal";
         },null,"_SendFormBut_HGroup2.visible");
         result[2] = new Binding(this,null,null,"_SendFormBut_Label1.text","title");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
            }
         }
      }
   }
}

