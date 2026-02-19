package com.iv.sh.support
{
   import com.iv.sh.StyleName;
   import com.iv.sh.ui.GreenBut;
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import spark.components.Label;
   import spark.components.TextArea;
   import spark.components.TextInput;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class PopUpWriteToAdmin extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpWriteToAdmin_Label1:Label;
      
      public var _PopUpWriteToAdmin_Label2:Label;
      
      private var _95474689descr:TextArea;
      
      private var _96619420email:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1611959924errorEmail:Boolean;
      
      private var _1610815193errorDescr:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpWriteToAdmin()
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
         bindings = this._PopUpWriteToAdmin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_support_PopUpWriteToAdminWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpWriteToAdmin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 400;
         this.height = 400;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpWriteToAdmin_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpWriteToAdmin._watcherSetupUtil = param1;
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
      
      public function validateForm() : void
      {
         this.errorEmail = !EmailValidator.validate(this.email.text);
         this.errorDescr = StringUtil.trim(this.descr.text).length < 7;
      }
      
      public function getColor(param1:Boolean) : uint
      {
         if(param1)
         {
            return 15597568;
         }
         return 8274230;
      }
      
      public function getEmail(param1:String) : String
      {
         if(EmailValidator.validate(param1))
         {
            return param1;
         }
         return "";
      }
      
      private function _PopUpWriteToAdmin_Array1_c() : Array
      {
         return [this._PopUpWriteToAdmin_VGroup1_c()];
      }
      
      private function _PopUpWriteToAdmin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._PopUpWriteToAdmin_VGroup2_c(),this._PopUpWriteToAdmin_VGroup3_c(),this._PopUpWriteToAdmin_GreenBut1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpWriteToAdmin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "justify";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpWriteToAdmin_Label1_i(),this._PopUpWriteToAdmin_TextInput1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpWriteToAdmin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Укажите email на который будет отправлен ответ";
         _loc1_.id = "_PopUpWriteToAdmin_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpWriteToAdmin_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpWriteToAdmin_Label1",this._PopUpWriteToAdmin_Label1);
         return _loc1_;
      }
      
      private function _PopUpWriteToAdmin_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.tabIndex = 0;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.id = "email";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.email = _loc1_;
         BindingManager.executeBindings(this,"email",this.email);
         return _loc1_;
      }
      
      private function _PopUpWriteToAdmin_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "justify";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpWriteToAdmin_Label2_i(),this._PopUpWriteToAdmin_TextArea1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpWriteToAdmin_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Подробно опишите вашу проблему";
         _loc1_.id = "_PopUpWriteToAdmin_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpWriteToAdmin_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpWriteToAdmin_Label2",this._PopUpWriteToAdmin_Label2);
         return _loc1_;
      }
      
      private function _PopUpWriteToAdmin_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         _loc1_.percentHeight = 100;
         _loc1_.tabIndex = 1;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.id = "descr";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.descr = _loc1_;
         BindingManager.executeBindings(this,"descr",this.descr);
         return _loc1_;
      }
      
      private function _PopUpWriteToAdmin_GreenBut1_c() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.title = "Отправить";
         _loc1_.addEventListener("click",this.___PopUpWriteToAdmin_GreenBut1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___PopUpWriteToAdmin_GreenBut1_click(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = null;
         var _loc3_:URLVariables = null;
         var _loc4_:URLLoader = null;
         this.validateForm();
         if(!this.errorEmail && !this.errorDescr)
         {
            _loc2_ = new URLRequest("http://faminta.com/send_to_support.php");
            _loc2_.method = URLRequestMethod.POST;
            _loc3_ = new URLVariables();
            _loc3_["m"] = this.descr.text;
            _loc3_["from"] = this.email.text;
            _loc3_["i"] = SH.app.instId;
            _loc3_["r"] = SH.app.refId;
            _loc3_["uid"] = SH.app.userId;
            _loc3_["v"] = SH.app.version;
            _loc3_["p"] = SH.app.pageURL;
            _loc3_["mode"] = "ba";
            _loc3_["app"] = SH.app.rsloader.appLoader.app.id || "shower";
            _loc2_.data = _loc3_;
            _loc4_ = new URLLoader(_loc2_);
            _loc4_.data = _loc3_;
            _loc4_.load(_loc2_);
            hide();
         }
      }
      
      private function _PopUpWriteToAdmin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpWriteToAdmin_Label1.styleName");
         result[1] = new Binding(this,function():uint
         {
            return getColor(errorEmail);
         },function(param1:uint):void
         {
            _PopUpWriteToAdmin_Label1.setStyle("color",param1);
         },"_PopUpWriteToAdmin_Label1.color");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = getEmail(SH.app.realId);
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"email.text");
         result[3] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpWriteToAdmin_Label2.styleName");
         result[4] = new Binding(this,function():uint
         {
            return getColor(errorDescr);
         },function(param1:uint):void
         {
            _PopUpWriteToAdmin_Label2.setStyle("color",param1);
         },"_PopUpWriteToAdmin_Label2.color");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get descr() : TextArea
      {
         return this._95474689descr;
      }
      
      public function set descr(param1:TextArea) : void
      {
         var _loc2_:Object = this._95474689descr;
         if(_loc2_ !== param1)
         {
            this._95474689descr = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descr",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get email() : TextInput
      {
         return this._96619420email;
      }
      
      public function set email(param1:TextInput) : void
      {
         var _loc2_:Object = this._96619420email;
         if(_loc2_ !== param1)
         {
            this._96619420email = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"email",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get errorEmail() : Boolean
      {
         return this._1611959924errorEmail;
      }
      
      private function set errorEmail(param1:Boolean) : void
      {
         var _loc2_:Object = this._1611959924errorEmail;
         if(_loc2_ !== param1)
         {
            this._1611959924errorEmail = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorEmail",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get errorDescr() : Boolean
      {
         return this._1610815193errorDescr;
      }
      
      private function set errorDescr(param1:Boolean) : void
      {
         var _loc2_:Object = this._1610815193errorDescr;
         if(_loc2_ !== param1)
         {
            this._1610815193errorDescr = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorDescr",_loc2_,param1));
            }
         }
      }
   }
}

