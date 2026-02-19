package com.iv.sh.ref
{
   import com.iv.sh.ui.popup.PopUp;
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
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class PopUpRefs extends PopUp implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpRefs_BitmapImageScale1:BitmapImageScale;
      
      private var _1279489372_PopUpRefs_Group1:Group;
      
      public var _PopUpRefs_PagePayRealsRequests1:PagePayRealsRequests;
      
      public var _PopUpRefs_PayRequests1:PayRequests;
      
      public var _PopUpRefs_PayedRequests1:PayedRequests;
      
      public var _PopUpRefs_RefsList1:RefsList;
      
      private var _97299bar:PopUpRefsTabBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml__assets_popup_light_bg2_png_1812769580:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpRefs()
      {
         var bindings:Array;
         var watchers:Array;
         var _PopUpRefs_PagePayRealsRequests1_factory:DeferredInstanceFromFunction;
         var _PopUpRefs_PayRequests1_factory:DeferredInstanceFromFunction;
         var _PopUpRefs_PayedRequests1_factory:DeferredInstanceFromFunction;
         var _PopUpRefs_RefsList1_factory:DeferredInstanceFromFunction;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_popup_light_bg2_png_1812769580 = PopUpRefs__embed_mxml__assets_popup_light_bg2_png_1812769580;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpRefs_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpRefsWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpRefs[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 700;
         this.height = 500;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpRefs_Array2_c);
         _PopUpRefs_PagePayRealsRequests1_factory = new DeferredInstanceFromFunction(this._PopUpRefs_PagePayRealsRequests1_i);
         _PopUpRefs_PayRequests1_factory = new DeferredInstanceFromFunction(this._PopUpRefs_PayRequests1_i);
         _PopUpRefs_PayedRequests1_factory = new DeferredInstanceFromFunction(this._PopUpRefs_PayedRequests1_i);
         _PopUpRefs_RefsList1_factory = new DeferredInstanceFromFunction(this._PopUpRefs_RefsList1_i);
         states = [new State({
            "name":"refs",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_PopUpRefs_RefsList1_factory,
               "destination":"_PopUpRefs_Group1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_PopUpRefs_BitmapImageScale1"]
            })]
         }),new State({
            "name":"requests",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_PopUpRefs_PayRequests1_factory,
               "destination":"_PopUpRefs_Group1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_PopUpRefs_BitmapImageScale1"]
            })]
         }),new State({
            "name":"pays",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_PopUpRefs_PayedRequests1_factory,
               "destination":"_PopUpRefs_Group1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_PopUpRefs_BitmapImageScale1"]
            })]
         }),new State({
            "name":"reals",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_PopUpRefs_PagePayRealsRequests1_factory,
               "destination":"_PopUpRefs_Group1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_PopUpRefs_BitmapImageScale1"]
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
         PopUpRefs._watcherSetupUtil = param1;
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
      
      private function _PopUpRefs_Array2_c() : Array
      {
         return [this._PopUpRefs_VGroup1_c()];
      }
      
      private function _PopUpRefs_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.bottom = 0;
         _loc1_.top = -30;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._PopUpRefs_PopUpRefsTabBar1_i(),this._PopUpRefs_Group1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRefs_PopUpRefsTabBar1_i() : PopUpRefsTabBar
      {
         var _loc1_:PopUpRefsTabBar = new PopUpRefsTabBar();
         _loc1_.percentWidth = 100;
         _loc1_.id = "bar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bar = _loc1_;
         BindingManager.executeBindings(this,"bar",this.bar);
         return _loc1_;
      }
      
      private function _PopUpRefs_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._PopUpRefs_BitmapImageScale1_i()];
         _loc1_.id = "_PopUpRefs_Group1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefs_Group1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefs_Group1",this._PopUpRefs_Group1);
         return _loc1_;
      }
      
      private function _PopUpRefs_BitmapImageScale1_i() : BitmapImageScale
      {
         var _loc1_:BitmapImageScale = new BitmapImageScale();
         _loc1_.left = -17;
         _loc1_.right = -17;
         _loc1_.bottom = -17;
         _loc1_.top = 0;
         _loc1_.source = this._embed_mxml__assets_popup_light_bg2_png_1812769580;
         _loc1_.s9X = 5;
         _loc1_.s9Y = 2;
         _loc1_.s9H = 4;
         _loc1_.s9W = 6;
         _loc1_.id = "_PopUpRefs_BitmapImageScale1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefs_BitmapImageScale1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefs_BitmapImageScale1",this._PopUpRefs_BitmapImageScale1);
         return _loc1_;
      }
      
      private function _PopUpRefs_RefsList1_i() : RefsList
      {
         var _loc1_:RefsList = new RefsList();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_PopUpRefs_RefsList1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefs_RefsList1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefs_RefsList1",this._PopUpRefs_RefsList1);
         return _loc1_;
      }
      
      private function _PopUpRefs_PayRequests1_i() : PayRequests
      {
         var _loc1_:PayRequests = new PayRequests();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_PopUpRefs_PayRequests1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefs_PayRequests1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefs_PayRequests1",this._PopUpRefs_PayRequests1);
         return _loc1_;
      }
      
      private function _PopUpRefs_PayedRequests1_i() : PayedRequests
      {
         var _loc1_:PayedRequests = new PayedRequests();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_PopUpRefs_PayedRequests1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefs_PayedRequests1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefs_PayedRequests1",this._PopUpRefs_PayedRequests1);
         return _loc1_;
      }
      
      private function _PopUpRefs_PagePayRealsRequests1_i() : PagePayRealsRequests
      {
         var _loc1_:PagePayRealsRequests = new PagePayRealsRequests();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_PopUpRefs_PagePayRealsRequests1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefs_PagePayRealsRequests1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefs_PagePayRealsRequests1",this._PopUpRefs_PagePayRealsRequests1);
         return _loc1_;
      }
      
      private function _PopUpRefs_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = bar.selected;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"this.currentState");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PopUpRefs_Group1() : Group
      {
         return this._1279489372_PopUpRefs_Group1;
      }
      
      public function set _PopUpRefs_Group1(param1:Group) : void
      {
         var _loc2_:Object = this._1279489372_PopUpRefs_Group1;
         if(_loc2_ !== param1)
         {
            this._1279489372_PopUpRefs_Group1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PopUpRefs_Group1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : PopUpRefsTabBar
      {
         return this._97299bar;
      }
      
      public function set bar(param1:PopUpRefsTabBar) : void
      {
         var _loc2_:Object = this._97299bar;
         if(_loc2_ !== param1)
         {
            this._97299bar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
            }
         }
      }
   }
}

