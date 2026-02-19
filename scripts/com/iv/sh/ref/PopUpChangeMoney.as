package com.iv.sh.ref
{
   import com.iv.sh.ui.inputform.InputForm;
   import com.iv.sh.ui.popup.PopUp;
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
   import mx.controls.Alert;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PopUpChangeMoney extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      private var _3148996form:InputForm;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var refId:String;
      
      private var _104079552money:int;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpChangeMoney()
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
         bindings = this._PopUpChangeMoney_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpChangeMoneyWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpChangeMoney[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.title = "Сменить версию приложения";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpChangeMoney_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpChangeMoney._watcherSetupUtil = param1;
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
      
      private function onChange(param1:String) : void
      {
         SH.app.api.connection.call("setMoney",new Responder(this.onChangeVersion),this.refId,param1);
      }
      
      private function onChangeVersion(param1:int) : void
      {
         if(param1 == 2)
         {
            Alert.show("Вы не админ");
         }
         else
         {
            hide();
         }
      }
      
      private function _PopUpChangeMoney_Array1_c() : Array
      {
         return [this._PopUpChangeMoney_InputForm1_i()];
      }
      
      private function _PopUpChangeMoney_InputForm1_i() : InputForm
      {
         var _loc1_:InputForm = new InputForm();
         _loc1_.percentWidth = 100;
         _loc1_.restrict = "0123456789";
         _loc1_.maxChars = 6;
         _loc1_.editable = true;
         _loc1_.title = "Сохранить";
         _loc1_.id = "form";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.form = _loc1_;
         BindingManager.executeBindings(this,"form",this.form);
         return _loc1_;
      }
      
      private function _PopUpChangeMoney_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,null,null,"form.text","money");
         result[1] = new Binding(this,function():Function
         {
            return onChange;
         },null,"form.onSend");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get form() : InputForm
      {
         return this._3148996form;
      }
      
      public function set form(param1:InputForm) : void
      {
         var _loc2_:Object = this._3148996form;
         if(_loc2_ !== param1)
         {
            this._3148996form = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"form",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get money() : int
      {
         return this._104079552money;
      }
      
      public function set money(param1:int) : void
      {
         var _loc2_:Object = this._104079552money;
         if(_loc2_ !== param1)
         {
            this._104079552money = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"money",_loc2_,param1));
            }
         }
      }
   }
}

