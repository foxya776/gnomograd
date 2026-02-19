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
   
   public class PopUpAddLivePoint extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpAddLivePoint_InputForm1:InputForm;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _112787ref:Ref;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpAddLivePoint()
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
         bindings = this._PopUpAddLivePoint_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpAddLivePointWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpAddLivePoint[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.title = "Изменить количество человекоминут";
         this.priority = 3;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpAddLivePoint_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpAddLivePoint._watcherSetupUtil = param1;
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
      
      private function onSend(param1:String) : void
      {
         if(isFinite(this.ref.livePoints))
         {
            SH.app.api.connection.call("setLivePoint",new Responder(this.onAddLivePoint),this.ref.id,int(param1));
         }
         else
         {
            Alert.show("Некорректное число");
         }
      }
      
      private function onAddLivePoint(param1:int) : void
      {
         if(param1 == 2)
         {
            Alert.show("У вас нет таких прав");
         }
         else if(param1 == 1)
         {
            hide();
         }
      }
      
      private function _PopUpAddLivePoint_Array1_c() : Array
      {
         return [this._PopUpAddLivePoint_InputForm1_i()];
      }
      
      private function _PopUpAddLivePoint_InputForm1_i() : InputForm
      {
         var _loc1_:InputForm = new InputForm();
         _loc1_.percentWidth = 100;
         _loc1_.restrict = "-0123456789";
         _loc1_.title = "Сохранить";
         _loc1_.id = "_PopUpAddLivePoint_InputForm1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpAddLivePoint_InputForm1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpAddLivePoint_InputForm1",this._PopUpAddLivePoint_InputForm1);
         return _loc1_;
      }
      
      private function _PopUpAddLivePoint_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = ref.livePoints;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpAddLivePoint_InputForm1.text");
         result[1] = new Binding(this,function():Function
         {
            return onSend;
         },null,"_PopUpAddLivePoint_InputForm1.onSend");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get ref() : Ref
      {
         return this._112787ref;
      }
      
      public function set ref(param1:Ref) : void
      {
         var _loc2_:Object = this._112787ref;
         if(_loc2_ !== param1)
         {
            this._112787ref = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ref",_loc2_,param1));
            }
         }
      }
   }
}

