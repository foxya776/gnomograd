package com.iv.sh.ref
{
   import com.iv.sh.ui.tabbar.OrangeTab;
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
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class PopUpRefsTabBar extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _3433675pays:OrangeTab;
      
      private var _108386965reals:OrangeTab;
      
      private var _3496512refs:OrangeTab;
      
      private var _393257020requests:OrangeTab;
      
      private var _3552126tabs:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1191572123selected:String = "refs";
      
      private var _embed_mxml__assets_delimetr_png_838456980:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpRefsTabBar()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_delimetr_png_838456980 = PopUpRefsTabBar__embed_mxml__assets_delimetr_png_838456980;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpRefsTabBar_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpRefsTabBarWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpRefsTabBar[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._PopUpRefsTabBar_BitmapImage1_c(),this._PopUpRefsTabBar_HGroup1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpRefsTabBar._watcherSetupUtil = param1;
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
      
      private function _PopUpRefsTabBar_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_delimetr_png_838456980;
         _loc1_.left = -17;
         _loc1_.right = -17;
         _loc1_.bottom = 0;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpRefsTabBar_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._PopUpRefsTabBar_OrangeTab1_i(),this._PopUpRefsTabBar_OrangeTab2_i(),this._PopUpRefsTabBar_OrangeTab3_i(),this._PopUpRefsTabBar_OrangeTab4_i()];
         _loc1_.addEventListener("click",this.__tabs_click);
         _loc1_.id = "tabs";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabs = _loc1_;
         BindingManager.executeBindings(this,"tabs",this.tabs);
         return _loc1_;
      }
      
      private function _PopUpRefsTabBar_OrangeTab1_i() : OrangeTab
      {
         var _loc1_:OrangeTab = new OrangeTab();
         _loc1_.title = "Партнёры";
         _loc1_.id = "refs";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.refs = _loc1_;
         BindingManager.executeBindings(this,"refs",this.refs);
         return _loc1_;
      }
      
      private function _PopUpRefsTabBar_OrangeTab2_i() : OrangeTab
      {
         var _loc1_:OrangeTab = new OrangeTab();
         _loc1_.title = "Заявки";
         _loc1_.id = "requests";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.requests = _loc1_;
         BindingManager.executeBindings(this,"requests",this.requests);
         return _loc1_;
      }
      
      private function _PopUpRefsTabBar_OrangeTab3_i() : OrangeTab
      {
         var _loc1_:OrangeTab = new OrangeTab();
         _loc1_.title = "Оплаченные";
         _loc1_.id = "pays";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pays = _loc1_;
         BindingManager.executeBindings(this,"pays",this.pays);
         return _loc1_;
      }
      
      private function _PopUpRefsTabBar_OrangeTab4_i() : OrangeTab
      {
         var _loc1_:OrangeTab = new OrangeTab();
         _loc1_.title = "Обмен реалов";
         _loc1_.id = "reals";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.reals = _loc1_;
         BindingManager.executeBindings(this,"reals",this.reals);
         return _loc1_;
      }
      
      public function __tabs_click(param1:MouseEvent) : void
      {
         this.selected = UIComponent(param1.target).id;
      }
      
      private function _PopUpRefsTabBar_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return selected == "refs";
         },null,"refs.selected");
         result[1] = new Binding(this,function():Boolean
         {
            return selected == "requests";
         },null,"requests.selected");
         result[2] = new Binding(this,function():Boolean
         {
            return selected == "pays";
         },null,"pays.selected");
         result[3] = new Binding(this,function():Boolean
         {
            return selected == "reals";
         },null,"reals.selected");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get pays() : OrangeTab
      {
         return this._3433675pays;
      }
      
      public function set pays(param1:OrangeTab) : void
      {
         var _loc2_:Object = this._3433675pays;
         if(_loc2_ !== param1)
         {
            this._3433675pays = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pays",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reals() : OrangeTab
      {
         return this._108386965reals;
      }
      
      public function set reals(param1:OrangeTab) : void
      {
         var _loc2_:Object = this._108386965reals;
         if(_loc2_ !== param1)
         {
            this._108386965reals = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reals",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get refs() : OrangeTab
      {
         return this._3496512refs;
      }
      
      public function set refs(param1:OrangeTab) : void
      {
         var _loc2_:Object = this._3496512refs;
         if(_loc2_ !== param1)
         {
            this._3496512refs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refs",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get requests() : OrangeTab
      {
         return this._393257020requests;
      }
      
      public function set requests(param1:OrangeTab) : void
      {
         var _loc2_:Object = this._393257020requests;
         if(_loc2_ !== param1)
         {
            this._393257020requests = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requests",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabs() : HGroup
      {
         return this._3552126tabs;
      }
      
      public function set tabs(param1:HGroup) : void
      {
         var _loc2_:Object = this._3552126tabs;
         if(_loc2_ !== param1)
         {
            this._3552126tabs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabs",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selected() : String
      {
         return this._1191572123selected;
      }
      
      public function set selected(param1:String) : void
      {
         var _loc2_:Object = this._1191572123selected;
         if(_loc2_ !== param1)
         {
            this._1191572123selected = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selected",_loc2_,param1));
            }
         }
      }
   }
}

