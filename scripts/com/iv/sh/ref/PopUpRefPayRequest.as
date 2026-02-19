package com.iv.sh.ref
{
   import com.iv.sh.StyleName;
   import com.iv.sh.ui.GreenBut;
   import com.iv.sh.ui.TextInputDefault;
   import com.iv.sh.ui.TextInputDefaultSkin;
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
   import spark.components.Label;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class PopUpRefPayRequest extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpRefPayRequest_Label1:Label;
      
      private var _109446num:TextInputDefault;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1912833502numError:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpRefPayRequest()
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
         bindings = this._PopUpRefPayRequest_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpRefPayRequestWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpRefPayRequest[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.title = "Заявление на получение денег";
         this.width = 400;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpRefPayRequest_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpRefPayRequest._watcherSetupUtil = param1;
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
      
      protected function greenbut1_clickHandler(param1:MouseEvent) : void
      {
         if(this.validate())
         {
            SH.app.api.connection.call("addRefPayRequest",new Responder(this.onAddRefPayRequest),this.num.getInputText());
         }
      }
      
      public function validate() : Boolean
      {
         this.numError = this.num.getInputText().length < 14;
         return !this.numError;
      }
      
      private function onAddRefPayRequest(param1:int) : void
      {
         if(param1 == 1)
         {
            Alert.show("У вас нет прав на это действие");
         }
         else if(param1 == 2)
         {
            Alert.show("Вы уже отправляли заявку на вывод денег");
         }
         else if(param1 == 3)
         {
            Alert.show("У вас недостаточно денег на счете.");
         }
         else if(param1 == 4)
         {
            hide();
         }
      }
      
      private function _PopUpRefPayRequest_Array1_c() : Array
      {
         return [this._PopUpRefPayRequest_VGroup1_c()];
      }
      
      private function _PopUpRefPayRequest_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._PopUpRefPayRequest_VGroup2_c(),this._PopUpRefPayRequest_GreenBut1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRefPayRequest_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpRefPayRequest_Label1_i(),this._PopUpRefPayRequest_TextInputDefault1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRefPayRequest_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.text = "Слишком короткий номер счета";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",15597568);
         _loc1_.id = "_PopUpRefPayRequest_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefPayRequest_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefPayRequest_Label1",this._PopUpRefPayRequest_Label1);
         return _loc1_;
      }
      
      private function _PopUpRefPayRequest_TextInputDefault1_i() : TextInputDefault
      {
         var _loc1_:TextInputDefault = new TextInputDefault();
         _loc1_.defaultText = "Номер счета вашего яндекс кашелька";
         _loc1_.restrict = "0123456789";
         _loc1_.maxChars = 16;
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.id = "num";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.num = _loc1_;
         BindingManager.executeBindings(this,"num",this.num);
         return _loc1_;
      }
      
      private function _PopUpRefPayRequest_GreenBut1_c() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.title = "Отправить";
         _loc1_.addEventListener("click",this.___PopUpRefPayRequest_GreenBut1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___PopUpRefPayRequest_GreenBut1_click(param1:MouseEvent) : void
      {
         this.greenbut1_clickHandler(param1);
      }
      
      private function _PopUpRefPayRequest_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpRefPayRequest_Label1.styleName");
         result[1] = new Binding(this,null,null,"_PopUpRefPayRequest_Label1.visible","numError");
         result[2] = new Binding(this,null,null,"_PopUpRefPayRequest_Label1.includeInLayout","numError");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get num() : TextInputDefault
      {
         return this._109446num;
      }
      
      public function set num(param1:TextInputDefault) : void
      {
         var _loc2_:Object = this._109446num;
         if(_loc2_ !== param1)
         {
            this._109446num = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numError() : Boolean
      {
         return this._1912833502numError;
      }
      
      public function set numError(param1:Boolean) : void
      {
         var _loc2_:Object = this._1912833502numError;
         if(_loc2_ !== param1)
         {
            this._1912833502numError = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numError",_loc2_,param1));
            }
         }
      }
   }
}

