package com.iv.sh.ui
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.Label;
   
   use namespace mx_internal;
   
   public class BlueBut extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _BlueBut_BitmapImageScale1:BitmapImageScale;
      
      public var _BlueBut_BitmapImageScale2:BitmapImageScale;
      
      public var _BlueBut_Label1:Label;
      
      public var _BlueBut_Label2:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _110371416title:String;
      
      private var _embed_mxml__assets_blue_but_over_png_531571704:Class;
      
      private var _embed_mxml__assets_blue_but_png_952391028:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BlueBut()
      {
         var bindings:Array;
         var watchers:Array;
         var _BlueBut_BitmapImageScale1_factory:DeferredInstanceFromFunction;
         var _BlueBut_BitmapImageScale2_factory:DeferredInstanceFromFunction;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_blue_but_over_png_531571704 = BlueBut__embed_mxml__assets_blue_but_over_png_531571704;
         this._embed_mxml__assets_blue_but_png_952391028 = BlueBut__embed_mxml__assets_blue_but_png_952391028;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._BlueBut_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_BlueButWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BlueBut[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.buttonMode = true;
         this.mouseChildren = false;
         this.mxmlContent = [this._BlueBut_Label1_i(),this._BlueBut_Label2_i()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___BlueBut_Group1_rollOver);
         this.addEventListener("rollOut",this.___BlueBut_Group1_rollOut);
         _BlueBut_BitmapImageScale1_factory = new DeferredInstanceFromFunction(this._BlueBut_BitmapImageScale1_i);
         _BlueBut_BitmapImageScale2_factory = new DeferredInstanceFromFunction(this._BlueBut_BitmapImageScale2_i);
         states = [new State({
            "name":"normal",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_BlueBut_BitmapImageScale1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"over",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_BlueBut_BitmapImageScale2_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"disable",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_BlueBut_BitmapImageScale1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "name":"mouseEnabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
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
         BlueBut._watcherSetupUtil = param1;
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
      
      public function set showed(param1:Boolean) : void
      {
         visible = param1;
         includeInLayout = param1;
      }
      
      private function _BlueBut_BitmapImageScale1_i() : BitmapImageScale
      {
         var _loc1_:BitmapImageScale = new BitmapImageScale();
         _loc1_.percentWidth = 100;
         _loc1_.height = 37;
         _loc1_.source = this._embed_mxml__assets_blue_but_png_952391028;
         _loc1_.s9X = 22;
         _loc1_.s9Y = 16;
         _loc1_.s9H = 2;
         _loc1_.s9W = 1;
         _loc1_.id = "_BlueBut_BitmapImageScale1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BlueBut_BitmapImageScale1 = _loc1_;
         BindingManager.executeBindings(this,"_BlueBut_BitmapImageScale1",this._BlueBut_BitmapImageScale1);
         return _loc1_;
      }
      
      private function _BlueBut_BitmapImageScale2_i() : BitmapImageScale
      {
         var _loc1_:BitmapImageScale = new BitmapImageScale();
         _loc1_.percentWidth = 100;
         _loc1_.height = 37;
         _loc1_.source = this._embed_mxml__assets_blue_but_over_png_531571704;
         _loc1_.s9X = 22;
         _loc1_.s9Y = 16;
         _loc1_.s9H = 2;
         _loc1_.s9W = 1;
         _loc1_.id = "_BlueBut_BitmapImageScale2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BlueBut_BitmapImageScale2 = _loc1_;
         BindingManager.executeBindings(this,"_BlueBut_BitmapImageScale2",this._BlueBut_BitmapImageScale2);
         return _loc1_;
      }
      
      private function _BlueBut_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.left = 19;
         _loc1_.right = 17;
         _loc1_.top = 11;
         _loc1_.alpha = 0.4;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontSize",16);
         _loc1_.setStyle("color",0);
         _loc1_.id = "_BlueBut_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BlueBut_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_BlueBut_Label1",this._BlueBut_Label1);
         return _loc1_;
      }
      
      private function _BlueBut_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.left = 18;
         _loc1_.right = 18;
         _loc1_.top = 10;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontSize",16);
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_BlueBut_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BlueBut_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_BlueBut_Label2",this._BlueBut_Label2);
         return _loc1_;
      }
      
      public function ___BlueBut_Group1_rollOver(param1:MouseEvent) : void
      {
         currentState = "over";
      }
      
      public function ___BlueBut_Group1_rollOut(param1:MouseEvent) : void
      {
         currentState = "normal";
      }
      
      private function _BlueBut_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_BlueBut_Label1.text","title");
         _loc1_[1] = new Binding(this,null,null,"_BlueBut_Label2.text","title");
         return _loc1_;
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

