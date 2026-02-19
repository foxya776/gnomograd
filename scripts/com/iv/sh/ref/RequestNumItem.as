package com.iv.sh.ref
{
   import com.iv.sh.ui.Link;
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
   import mx.controls.dataGridClasses.MXDataGridItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.filters.*;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RequestNumItem extends MXDataGridItemRenderer implements IBindingClient, IListItemRenderer
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _RequestNumItem_Link1:Link;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RequestNumItem()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._RequestNumItem_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_RequestNumItemWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RequestNumItem[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.mxmlContent = [this._RequestNumItem_Link1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         RequestNumItem._watcherSetupUtil = param1;
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
      
      protected function link1_clickHandler(param1:MouseEvent) : void
      {
         System.setClipboard(RefPayRequest(data).num);
      }
      
      private function _RequestNumItem_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.setStyle("paddingLeft",8);
         _loc1_.setStyle("paddingTop",5);
         _loc1_.addEventListener("click",this.___RequestNumItem_Link1_click);
         _loc1_.id = "_RequestNumItem_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RequestNumItem_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_RequestNumItem_Link1",this._RequestNumItem_Link1);
         return _loc1_;
      }
      
      public function ___RequestNumItem_Link1_click(param1:MouseEvent) : void
      {
         this.link1_clickHandler(param1);
      }
      
      private function _RequestNumItem_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = RefPayRequest(data).num;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_RequestNumItem_Link1.text");
         return result;
      }
   }
}

