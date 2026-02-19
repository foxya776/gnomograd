package com.iv.sh.ui.popup
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PopUper extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _903340183shield:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var currentPopUp:PopUp;
      
      private var queue:Vector.<PopUp>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUper()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.queue = new Vector.<PopUp>();
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUper_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_popup_PopUperWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUper[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.verticalAlign = "middle";
         this.horizontalAlign = "center";
         this.mxmlContent = [this._PopUper_Group1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUper._watcherSetupUtil = param1;
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
      
      public function show(param1:PopUp) : void
      {
         if(this.currentPopUp)
         {
            removeElement(this.currentPopUp);
            this.queue.push(this.currentPopUp);
         }
         else
         {
            this.shield.visible = true;
         }
         this.currentPopUp = param1;
         addElement(param1);
      }
      
      public function hide() : void
      {
         if(this.currentPopUp)
         {
            this.shield.visible = false;
            removeElement(this.currentPopUp);
            this.currentPopUp = null;
            if(this.queue.length > 0)
            {
               this.show(this.queue.pop());
            }
         }
      }
      
      private function _PopUper_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContent = [this._PopUper_Rect1_c()];
         _loc1_.addEventListener("click",this.__shield_click);
         _loc1_.id = "shield";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shield = _loc1_;
         BindingManager.executeBindings(this,"shield",this.shield);
         return _loc1_;
      }
      
      private function _PopUper_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.fill = this._PopUper_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUper_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         _loc1_.alpha = 0.7;
         return _loc1_;
      }
      
      public function __shield_click(param1:MouseEvent) : void
      {
         this.currentPopUp.hide();
      }
      
      private function _PopUper_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"shield.width","width");
         _loc1_[1] = new Binding(this,null,null,"shield.height","height");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get shield() : Group
      {
         return this._903340183shield;
      }
      
      public function set shield(param1:Group) : void
      {
         var _loc2_:Object = this._903340183shield;
         if(_loc2_ !== param1)
         {
            this._903340183shield = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shield",_loc2_,param1));
            }
         }
      }
   }
}

