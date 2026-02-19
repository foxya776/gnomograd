package com.iv.sh.reg
{
   import com.adobe.crypto.MD5;
   import com.iv.sh.StyleName;
   import com.iv.sh.ui.BlueBut;
   import com.iv.sh.ui.GreenBut;
   import com.iv.sh.ui.TextInputDefault;
   import com.iv.sh.ui.TextInputDefaultSkin;
   import com.iv.sh.ui.popup.PopUp;
   import com.iv.sh.utils.WordUtils;
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PopUpReg extends PopUp implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpReg_BlueBut1:BlueBut;
      
      private var _18642619_PopUpReg_GreenBut1:GreenBut;
      
      public var _PopUpReg_GreenBut2:GreenBut;
      
      public var _PopUpReg_Label1:Label;
      
      public var _PopUpReg_Label2:Label;
      
      public var _PopUpReg_Label3:Label;
      
      public var _PopUpReg_Label4:Label;
      
      public var _PopUpReg_Label5:Label;
      
      public var _PopUpReg_Label6:Label;
      
      private var _629460594_PopUpReg_SetProperty1:SetProperty;
      
      private var _629460595_PopUpReg_SetProperty2:SetProperty;
      
      private var _1313956592_PopUpReg_VGroup1:VGroup;
      
      public var _PopUpReg_VGroup5:VGroup;
      
      private var _1362448882inputEmail:TextInputDefault;
      
      private var _1729629317inputPassword:TextInputDefault;
      
      private var _1879602669inputPasswordAccept:TextInputDefault;
      
      private var _2027485979inputSecretKey:TextInputDefault;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var preEmailText:String = "";
      
      public var prePassText:String = "";
      
      private var _1611959924errorEmail:Boolean;
      
      private var _2028159315shortPass:Boolean;
      
      private var _1309854310errorNoPass:Boolean;
      
      private var _272207201errorAcceptPass:Boolean;
      
      private var _174197359errorSekretKey:Boolean;
      
      private var _100473878isNew:Boolean;
      
      private var _embed_mxml__assets_police_for_guest_png_1859455626:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpReg()
      {
         var bindings:Array;
         var watchers:Array;
         var _PopUpReg_GreenBut2_factory:DeferredInstanceFromFunction;
         var _PopUpReg_VGroup5_factory:DeferredInstanceFromFunction;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_police_for_guest_png_1859455626 = PopUpReg__embed_mxml__assets_police_for_guest_png_1859455626;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpReg_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_reg_PopUpRegWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpReg[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.priority = 101;
         this.hard = true;
         this.width = 300;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpReg_Array2_c);
         this.currentState = "normal";
         _PopUpReg_GreenBut2_factory = new DeferredInstanceFromFunction(this._PopUpReg_GreenBut2_i);
         _PopUpReg_VGroup5_factory = new DeferredInstanceFromFunction(this._PopUpReg_VGroup5_i);
         states = [new State({
            "name":"normal",
            "overrides":[this._PopUpReg_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "target":"_PopUpReg_GreenBut1",
               "name":"title",
               "value":undefined
            }))]
         }),new State({
            "name":"full",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_PopUpReg_GreenBut2_factory,
               "destination":"_PopUpReg_VGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_PopUpReg_GreenBut1"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_PopUpReg_VGroup5_factory,
               "destination":"_PopUpReg_VGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_PopUpReg_GreenBut1"]
            }),this._PopUpReg_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
               "target":"_PopUpReg_GreenBut1",
               "name":"title",
               "value":undefined
            }))]
         })];
         BindingManager.executeBindings(this,"_PopUpReg_SetProperty1",this._PopUpReg_SetProperty1);
         BindingManager.executeBindings(this,"_PopUpReg_SetProperty2",this._PopUpReg_SetProperty2);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpReg._watcherSetupUtil = param1;
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
      
      protected function greenbut2_clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.validate())
         {
            _loc2_ = this.inputEmail.getInputText();
            _loc3_ = this.inputPassword.getInputText();
            SH.app.api.connection.call("sendSecretKey",new Responder(this.sendSecretKeyHandler),_loc2_,MD5.hash(_loc2_ + _loc3_));
            currentState = "full";
         }
      }
      
      protected function sendSecretKeyHandler(param1:Object) : void
      {
         if(param1 == 0)
         {
            Alert.show("Похоже у вас какие-то проблемы с интернетом попробуйте зайти позже.");
         }
      }
      
      protected function bluebut1_clickHandler(param1:MouseEvent) : void
      {
         hide();
         SH.app.popuper.show(new PopUpLogin());
      }
      
      protected function greenbut3_clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.validate())
         {
            _loc2_ = this.inputEmail.getInputText();
            _loc3_ = MD5.hash(_loc2_ + this.inputPassword.getInputText());
            SH.app.api.connection.call("reg",new Responder(this.onReg),_loc2_,_loc3_,this.inputSecretKey.getInputText());
         }
      }
      
      private function onReg(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(param1 == 1)
         {
            this.errorSekretKey = true;
         }
         else if(param1 == 2)
         {
            this.errorEmail = true;
            Alert.show(resourceManager.getString("base","very_long_email"));
         }
         else if(param1 == 3)
         {
            if(this.validate())
            {
               hide();
               _loc2_ = this.inputEmail.getInputText();
               _loc3_ = MD5.hash(_loc2_ + this.inputPassword.getInputText());
               if(SH.app.pageURL.indexOf("vreale.tv") != -1)
               {
                  SH.app.needGoToReg = true;
               }
               SH.app.logIn(_loc2_,_loc3_,_loc3_,"ba");
            }
         }
      }
      
      private function validate() : Boolean
      {
         this.errorEmail = !this.validateEmail(this.inputEmail.getInputText());
         if(this.inputPassword.getInputText() == "")
         {
            this.errorNoPass = true;
            this.shortPass = false;
         }
         else
         {
            this.errorNoPass = false;
            this.shortPass = this.inputPassword.getInputText().length < 6;
         }
         this.errorAcceptPass = this.inputPassword.getInputText() != this.inputPasswordAccept.getInputText();
         return !this.errorEmail && !this.shortPass && !this.errorAcceptPass && !this.errorNoPass;
      }
      
      private function validateEmail(param1:String) : Boolean
      {
         var _loc2_:RegExp = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      internal function getPassText(param1:Boolean) : String
      {
         if(param1)
         {
            return resourceManager.getString("base","enter_password_3");
         }
         return resourceManager.getString("base","enter_password_2");
      }
      
      private function _PopUpReg_Array2_c() : Array
      {
         return [this._PopUpReg_VGroup1_i()];
      }
      
      private function _PopUpReg_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._PopUpReg_Group1_c(),this._PopUpReg_VGroup2_c(),this._PopUpReg_VGroup3_c(),this._PopUpReg_VGroup4_c(),this._PopUpReg_GreenBut1_i(),this._PopUpReg_BlueBut1_i()];
         _loc1_.id = "_PopUpReg_VGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_VGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_VGroup1",this._PopUpReg_VGroup1);
         return _loc1_;
      }
      
      private function _PopUpReg_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PopUpReg_Rect1_c(),this._PopUpReg_BitmapImage1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpReg_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.stroke = this._PopUpReg_SolidColorStroke1_c();
         _loc1_.fill = this._PopUpReg_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpReg_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16749634;
         return _loc1_;
      }
      
      private function _PopUpReg_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16760961;
         _loc1_.alpha = 1;
         return _loc1_;
      }
      
      private function _PopUpReg_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.left = 6;
         _loc1_.top = 6;
         _loc1_.right = 6;
         _loc1_.bottom = 6;
         _loc1_.source = this._embed_mxml__assets_police_for_guest_png_1859455626;
         _loc1_.filters = [this._PopUpReg_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpReg_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.alpha = 0.8;
         _loc1_.inner = true;
         return _loc1_;
      }
      
      private function _PopUpReg_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpReg_Label1_i(),this._PopUpReg_TextInputDefault1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpReg_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",15597568);
         _loc1_.id = "_PopUpReg_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_Label1",this._PopUpReg_Label1);
         return _loc1_;
      }
      
      private function _PopUpReg_TextInputDefault1_i() : TextInputDefault
      {
         var _loc1_:TextInputDefault = new TextInputDefault();
         _loc1_.tabIndex = 1;
         _loc1_.tabFocusEnabled = true;
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 34;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.addEventListener("change",this.__inputEmail_change);
         _loc1_.addEventListener("focusIn",this.__inputEmail_focusIn);
         _loc1_.id = "inputEmail";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inputEmail = _loc1_;
         BindingManager.executeBindings(this,"inputEmail",this.inputEmail);
         return _loc1_;
      }
      
      public function __inputEmail_change(param1:TextOperationEvent) : void
      {
         var _loc2_:int = this.inputEmail.selectionActivePosition;
         var _loc3_:int = this.inputEmail.selectionAnchorPosition;
         this.inputEmail.text = this.inputEmail.text.toLowerCase();
         this.inputEmail.selectRange(_loc3_,_loc2_);
      }
      
      public function __inputEmail_focusIn(param1:FocusEvent) : void
      {
         this.inputEmail.restrict = "0-9a-zA-Zа-яА-яёЁ.,-_@";
      }
      
      private function _PopUpReg_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpReg_Label2_i(),this._PopUpReg_Label3_i(),this._PopUpReg_TextInputDefault2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpReg_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",15597568);
         _loc1_.id = "_PopUpReg_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_Label2",this._PopUpReg_Label2);
         return _loc1_;
      }
      
      private function _PopUpReg_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",15597568);
         _loc1_.id = "_PopUpReg_Label3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_Label3 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_Label3",this._PopUpReg_Label3);
         return _loc1_;
      }
      
      private function _PopUpReg_TextInputDefault2_i() : TextInputDefault
      {
         var _loc1_:TextInputDefault = new TextInputDefault();
         _loc1_.tabIndex = 2;
         _loc1_.tabFocusEnabled = true;
         _loc1_.isPass = true;
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 34;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.id = "inputPassword";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inputPassword = _loc1_;
         BindingManager.executeBindings(this,"inputPassword",this.inputPassword);
         return _loc1_;
      }
      
      private function _PopUpReg_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpReg_Label4_i(),this._PopUpReg_TextInputDefault3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpReg_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",15597568);
         _loc1_.id = "_PopUpReg_Label4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_Label4 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_Label4",this._PopUpReg_Label4);
         return _loc1_;
      }
      
      private function _PopUpReg_TextInputDefault3_i() : TextInputDefault
      {
         var _loc1_:TextInputDefault = new TextInputDefault();
         _loc1_.tabIndex = 3;
         _loc1_.tabFocusEnabled = true;
         _loc1_.isPass = true;
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 34;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.id = "inputPasswordAccept";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inputPasswordAccept = _loc1_;
         BindingManager.executeBindings(this,"inputPasswordAccept",this.inputPasswordAccept);
         return _loc1_;
      }
      
      private function _PopUpReg_GreenBut1_i() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.___PopUpReg_GreenBut1_click);
         _loc1_.id = "_PopUpReg_GreenBut1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_GreenBut1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_GreenBut1",this._PopUpReg_GreenBut1);
         return _loc1_;
      }
      
      public function ___PopUpReg_GreenBut1_click(param1:MouseEvent) : void
      {
         this.greenbut2_clickHandler(param1);
      }
      
      private function _PopUpReg_VGroup5_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PopUpReg_Label5_i(),this._PopUpReg_VGroup6_c()];
         _loc1_.id = "_PopUpReg_VGroup5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_VGroup5 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_VGroup5",this._PopUpReg_VGroup5);
         return _loc1_;
      }
      
      private function _PopUpReg_Label5_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpReg_Label5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_Label5 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_Label5",this._PopUpReg_Label5);
         return _loc1_;
      }
      
      private function _PopUpReg_VGroup6_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpReg_Label6_i(),this._PopUpReg_TextInputDefault4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpReg_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",15597568);
         _loc1_.id = "_PopUpReg_Label6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_Label6 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_Label6",this._PopUpReg_Label6);
         return _loc1_;
      }
      
      private function _PopUpReg_TextInputDefault4_i() : TextInputDefault
      {
         var _loc1_:TextInputDefault = new TextInputDefault();
         _loc1_.tabIndex = 4;
         _loc1_.tabFocusEnabled = true;
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 32;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.id = "inputSecretKey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inputSecretKey = _loc1_;
         BindingManager.executeBindings(this,"inputSecretKey",this.inputSecretKey);
         return _loc1_;
      }
      
      private function _PopUpReg_GreenBut2_i() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.___PopUpReg_GreenBut2_click);
         _loc1_.id = "_PopUpReg_GreenBut2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_GreenBut2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_GreenBut2",this._PopUpReg_GreenBut2);
         return _loc1_;
      }
      
      public function ___PopUpReg_GreenBut2_click(param1:MouseEvent) : void
      {
         this.greenbut3_clickHandler(param1);
      }
      
      private function _PopUpReg_BlueBut1_i() : BlueBut
      {
         var _loc1_:BlueBut = new BlueBut();
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.___PopUpReg_BlueBut1_click);
         _loc1_.id = "_PopUpReg_BlueBut1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpReg_BlueBut1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpReg_BlueBut1",this._PopUpReg_BlueBut1);
         return _loc1_;
      }
      
      public function ___PopUpReg_BlueBut1_click(param1:MouseEvent) : void
      {
         this.bluebut1_clickHandler(param1);
      }
      
      private function _PopUpReg_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","welcome_to_reality_tv");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"this.title");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","invalid_email");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_Label1.text");
         result[2] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpReg_Label1.styleName");
         result[3] = new Binding(this,function():Boolean
         {
            return errorEmail;
         },null,"_PopUpReg_Label1.visible");
         result[4] = new Binding(this,function():Boolean
         {
            return errorEmail;
         },null,"_PopUpReg_Label1.includeInLayout");
         result[5] = new Binding(this,null,null,"inputEmail.text","preEmailText");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","enter_your_email");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputEmail.defaultText");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = WordUtils.nowhite;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputEmail.restrict");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","no_password_is_written");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_Label2.text");
         result[9] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpReg_Label2.styleName");
         result[10] = new Binding(this,function():Boolean
         {
            return errorNoPass;
         },null,"_PopUpReg_Label2.visible");
         result[11] = new Binding(this,function():Boolean
         {
            return errorNoPass;
         },null,"_PopUpReg_Label2.includeInLayout");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","password_too_short");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_Label3.text");
         result[13] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpReg_Label3.styleName");
         result[14] = new Binding(this,function():Boolean
         {
            return shortPass;
         },null,"_PopUpReg_Label3.visible");
         result[15] = new Binding(this,function():Boolean
         {
            return shortPass;
         },null,"_PopUpReg_Label3.includeInLayout");
         result[16] = new Binding(this,null,null,"inputPassword.text","prePassText");
         result[17] = new Binding(this,function():String
         {
            var _loc1_:* = getPassText(isNew);
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputPassword.defaultText");
         result[18] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","passwords_do_not_match");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_Label4.text");
         result[19] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpReg_Label4.styleName");
         result[20] = new Binding(this,function():Boolean
         {
            return errorAcceptPass;
         },null,"_PopUpReg_Label4.visible");
         result[21] = new Binding(this,function():Boolean
         {
            return errorAcceptPass;
         },null,"_PopUpReg_Label4.includeInLayout");
         result[22] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","re_enter_password");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputPasswordAccept.defaultText");
         result[23] = new Binding(this,function():*
         {
            return resourceManager.getString("base","send");
         },null,"_PopUpReg_SetProperty1.value");
         result[24] = new Binding(this,function():*
         {
            return resourceManager.getString("base","send_key_again");
         },null,"_PopUpReg_SetProperty2.value");
         result[25] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","key_sended");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_Label5.text");
         result[26] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpReg_Label5.styleName");
         result[27] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","invalid_secret_key");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_Label6.text");
         result[28] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpReg_Label6.styleName");
         result[29] = new Binding(this,function():Boolean
         {
            return errorSekretKey;
         },null,"_PopUpReg_Label6.visible");
         result[30] = new Binding(this,function():Boolean
         {
            return errorSekretKey;
         },null,"_PopUpReg_Label6.includeInLayout");
         result[31] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","secret_key");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputSecretKey.defaultText");
         result[32] = new Binding(this,function():String
         {
            var _loc1_:* = WordUtils.nowhite;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputSecretKey.restrict");
         result[33] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","done");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_GreenBut2.title");
         result[34] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","i_am_registered");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpReg_BlueBut1.title");
         result[35] = new Binding(this,function():Boolean
         {
            return !isNew;
         },null,"_PopUpReg_BlueBut1.showed");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PopUpReg_GreenBut1() : GreenBut
      {
         return this._18642619_PopUpReg_GreenBut1;
      }
      
      public function set _PopUpReg_GreenBut1(param1:GreenBut) : void
      {
         var _loc2_:Object = this._18642619_PopUpReg_GreenBut1;
         if(_loc2_ !== param1)
         {
            this._18642619_PopUpReg_GreenBut1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PopUpReg_GreenBut1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _PopUpReg_SetProperty1() : SetProperty
      {
         return this._629460594_PopUpReg_SetProperty1;
      }
      
      public function set _PopUpReg_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._629460594_PopUpReg_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._629460594_PopUpReg_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PopUpReg_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _PopUpReg_SetProperty2() : SetProperty
      {
         return this._629460595_PopUpReg_SetProperty2;
      }
      
      public function set _PopUpReg_SetProperty2(param1:SetProperty) : void
      {
         var _loc2_:Object = this._629460595_PopUpReg_SetProperty2;
         if(_loc2_ !== param1)
         {
            this._629460595_PopUpReg_SetProperty2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PopUpReg_SetProperty2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _PopUpReg_VGroup1() : VGroup
      {
         return this._1313956592_PopUpReg_VGroup1;
      }
      
      public function set _PopUpReg_VGroup1(param1:VGroup) : void
      {
         var _loc2_:Object = this._1313956592_PopUpReg_VGroup1;
         if(_loc2_ !== param1)
         {
            this._1313956592_PopUpReg_VGroup1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PopUpReg_VGroup1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inputEmail() : TextInputDefault
      {
         return this._1362448882inputEmail;
      }
      
      public function set inputEmail(param1:TextInputDefault) : void
      {
         var _loc2_:Object = this._1362448882inputEmail;
         if(_loc2_ !== param1)
         {
            this._1362448882inputEmail = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputEmail",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inputPassword() : TextInputDefault
      {
         return this._1729629317inputPassword;
      }
      
      public function set inputPassword(param1:TextInputDefault) : void
      {
         var _loc2_:Object = this._1729629317inputPassword;
         if(_loc2_ !== param1)
         {
            this._1729629317inputPassword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputPassword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inputPasswordAccept() : TextInputDefault
      {
         return this._1879602669inputPasswordAccept;
      }
      
      public function set inputPasswordAccept(param1:TextInputDefault) : void
      {
         var _loc2_:Object = this._1879602669inputPasswordAccept;
         if(_loc2_ !== param1)
         {
            this._1879602669inputPasswordAccept = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputPasswordAccept",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inputSecretKey() : TextInputDefault
      {
         return this._2027485979inputSecretKey;
      }
      
      public function set inputSecretKey(param1:TextInputDefault) : void
      {
         var _loc2_:Object = this._2027485979inputSecretKey;
         if(_loc2_ !== param1)
         {
            this._2027485979inputSecretKey = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputSecretKey",_loc2_,param1));
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
      private function get shortPass() : Boolean
      {
         return this._2028159315shortPass;
      }
      
      private function set shortPass(param1:Boolean) : void
      {
         var _loc2_:Object = this._2028159315shortPass;
         if(_loc2_ !== param1)
         {
            this._2028159315shortPass = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shortPass",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get errorNoPass() : Boolean
      {
         return this._1309854310errorNoPass;
      }
      
      private function set errorNoPass(param1:Boolean) : void
      {
         var _loc2_:Object = this._1309854310errorNoPass;
         if(_loc2_ !== param1)
         {
            this._1309854310errorNoPass = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorNoPass",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get errorAcceptPass() : Boolean
      {
         return this._272207201errorAcceptPass;
      }
      
      private function set errorAcceptPass(param1:Boolean) : void
      {
         var _loc2_:Object = this._272207201errorAcceptPass;
         if(_loc2_ !== param1)
         {
            this._272207201errorAcceptPass = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorAcceptPass",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get errorSekretKey() : Boolean
      {
         return this._174197359errorSekretKey;
      }
      
      private function set errorSekretKey(param1:Boolean) : void
      {
         var _loc2_:Object = this._174197359errorSekretKey;
         if(_loc2_ !== param1)
         {
            this._174197359errorSekretKey = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorSekretKey",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isNew() : Boolean
      {
         return this._100473878isNew;
      }
      
      public function set isNew(param1:Boolean) : void
      {
         var _loc2_:Object = this._100473878isNew;
         if(_loc2_ !== param1)
         {
            this._100473878isNew = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isNew",_loc2_,param1));
            }
         }
      }
   }
}

