package com.iv.sh.ui.popup
{
   import com.iv.sh.utils.BitmapImageScale;
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
   import spark.components.Label;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class PopUpSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _PopUpSkin_Label1:Label;
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PopUp;
      
      private var _embed_mxml__assets_orange_bg_png_1576410250:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_orange_bg_png_1576410250 = PopUpSkin__embed_mxml__assets_orange_bg_png_1576410250;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_popup_PopUpSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._PopUpSkin_BitmapImageScale1_c(),this._PopUpSkin_Label1_i(),this._PopUpSkin_Group1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"disable",
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
         PopUpSkin._watcherSetupUtil = param1;
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
      
      private function _PopUpSkin_BitmapImageScale1_c() : BitmapImageScale
      {
         var _loc1_:BitmapImageScale = new BitmapImageScale();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.source = this._embed_mxml__assets_orange_bg_png_1576410250;
         _loc1_.s9X = 20;
         _loc1_.s9Y = 20;
         _loc1_.s9H = 4;
         _loc1_.s9W = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.left = 22;
         _loc1_.top = 22;
         _loc1_.right = 80;
         _loc1_.setStyle("fontSize",16);
         _loc1_.setStyle("color",5439488);
         _loc1_.id = "_PopUpSkin_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpSkin_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpSkin_Label1",this._PopUpSkin_Label1);
         return _loc1_;
      }
      
      private function _PopUpSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 50;
         _loc1_.bottom = 20;
         _loc1_.left = 20;
         _loc1_.right = 20;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _PopUpSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.title;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpSkin_Label1.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PopUp
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PopUp) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

