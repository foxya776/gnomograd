package com.iv.sh.reg
{
   import com.adobe.crypto.MD5;
   import com.iv.sh.StyleName;
   import com.iv.sh.support.EmailValidator;
   import com.iv.sh.ui.BlueBut;
   import com.iv.sh.ui.GreenBut;
   import com.iv.sh.ui.Link;
   import com.iv.sh.ui.OrangeBut;
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import spark.components.CheckBox;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PopUpLogin extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpLogin_BlueBut1:BlueBut;
      
      public var _PopUpLogin_GreenBut1:GreenBut;
      
      public var _PopUpLogin_Label1:Label;
      
      public var _PopUpLogin_Label2:Label;
      
      public var _PopUpLogin_Link1:Link;
      
      public var _PopUpLogin_OrangeBut3:OrangeBut;
      
      private var _1362448882inputEmail:TextInputDefault;
      
      private var _1729629317inputPassword:TextInputDefault;
      
      private var _1077756671memory:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1611959924errorEmail:Boolean;
      
      private var _954925063message:String;
      
      private var _embed_mxml__assets_police_for_guest_png_1859455626:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpLogin()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_police_for_guest_png_1859455626 = PopUpLogin__embed_mxml__assets_police_for_guest_png_1859455626;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpLogin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_reg_PopUpLoginWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpLogin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.priority = 101;
         this.width = 300;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpLogin_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpLogin._watcherSetupUtil = param1;
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
      
      protected function greenbut2_clickHandler() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.validate())
         {
            _loc1_ = StringUtil.trim(this.inputEmail.getInputText());
            _loc2_ = MD5.hash(_loc1_ + this.inputPassword.getInputText());
            _loc3_ = MD5.hash(_loc1_.toLocaleLowerCase() + this.inputPassword.getInputText());
            SH.app.logIn(_loc1_,_loc2_,_loc3_,"ba");
         }
      }
      
      private function validate() : Boolean
      {
         this.errorEmail = !EmailValidator.validate(this.inputEmail.getInputText());
         return !this.errorEmail;
      }
      
      protected function bluebut1_clickHandler(param1:MouseEvent) : void
      {
         hide();
         var _loc2_:PopUpReg = new PopUpReg();
         _loc2_.preEmailText = this.inputEmail.getInputText();
         _loc2_.prePassText = this.inputPassword.getInputText();
         SH.app.popuper.show(_loc2_);
      }
      
      private function _PopUpLogin_Array1_c() : Array
      {
         return [this._PopUpLogin_VGroup1_c()];
      }
      
      private function _PopUpLogin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._PopUpLogin_Group1_c(),this._PopUpLogin_Label1_i(),this._PopUpLogin_VGroup2_c(),this._PopUpLogin_TextInputDefault2_i(),this._PopUpLogin_CheckBox1_i(),this._PopUpLogin_GreenBut1_i(),this._PopUpLogin_BlueBut1_i(),this._PopUpLogin_OrangeBut1_c(),this._PopUpLogin_OrangeBut2_c(),this._PopUpLogin_OrangeBut3_i(),this._PopUpLogin_Link1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpLogin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PopUpLogin_Rect1_c(),this._PopUpLogin_BitmapImage1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpLogin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.stroke = this._PopUpLogin_SolidColorStroke1_c();
         _loc1_.fill = this._PopUpLogin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpLogin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16749634;
         return _loc1_;
      }
      
      private function _PopUpLogin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16760961;
         _loc1_.alpha = 1;
         return _loc1_;
      }
      
      private function _PopUpLogin_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.left = 6;
         _loc1_.top = 6;
         _loc1_.right = 6;
         _loc1_.bottom = 6;
         _loc1_.source = this._embed_mxml__assets_police_for_guest_png_1859455626;
         _loc1_.filters = [this._PopUpLogin_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpLogin_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.alpha = 0.8;
         _loc1_.inner = true;
         return _loc1_;
      }
      
      private function _PopUpLogin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpLogin_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogin_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogin_Label1",this._PopUpLogin_Label1);
         return _loc1_;
      }
      
      private function _PopUpLogin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._PopUpLogin_Label2_i(),this._PopUpLogin_TextInputDefault1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpLogin_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",15597568);
         _loc1_.id = "_PopUpLogin_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogin_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogin_Label2",this._PopUpLogin_Label2);
         return _loc1_;
      }
      
      private function _PopUpLogin_TextInputDefault1_i() : TextInputDefault
      {
         var _loc1_:TextInputDefault = new TextInputDefault();
         _loc1_.tabEnabled = true;
         _loc1_.tabIndex = 1;
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 34;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.addEventListener("enter",this.__inputEmail_enter);
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
      
      public function __inputEmail_enter(param1:FlexEvent) : void
      {
         this.greenbut2_clickHandler();
      }
      
      public function __inputEmail_change(param1:TextOperationEvent) : void
      {
      }
      
      public function __inputEmail_focusIn(param1:FocusEvent) : void
      {
         this.inputEmail.restrict = "0-9a-zA-Zа-яА-яёЁ.,-_@";
      }
      
      private function _PopUpLogin_TextInputDefault2_i() : TextInputDefault
      {
         var _loc1_:TextInputDefault = new TextInputDefault();
         _loc1_.tabEnabled = true;
         _loc1_.tabIndex = 2;
         _loc1_.isPass = true;
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 34;
         _loc1_.setStyle("skinClass",TextInputDefaultSkin);
         _loc1_.addEventListener("enter",this.__inputPassword_enter);
         _loc1_.id = "inputPassword";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inputPassword = _loc1_;
         BindingManager.executeBindings(this,"inputPassword",this.inputPassword);
         return _loc1_;
      }
      
      public function __inputPassword_enter(param1:FlexEvent) : void
      {
         this.greenbut2_clickHandler();
      }
      
      private function _PopUpLogin_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.buttonMode = true;
         _loc1_.addEventListener("change",this.__memory_change);
         _loc1_.id = "memory";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.memory = _loc1_;
         BindingManager.executeBindings(this,"memory",this.memory);
         return _loc1_;
      }
      
      public function __memory_change(param1:Event) : void
      {
         var _loc2_:SharedObject = SharedObject.getLocal("sh_auth");
         _loc2_.data["noSave"] = SH.app.noSave = !this.memory.selected;
         _loc2_.flush();
      }
      
      private function _PopUpLogin_GreenBut1_i() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.___PopUpLogin_GreenBut1_click);
         _loc1_.id = "_PopUpLogin_GreenBut1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogin_GreenBut1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogin_GreenBut1",this._PopUpLogin_GreenBut1);
         return _loc1_;
      }
      
      public function ___PopUpLogin_GreenBut1_click(param1:MouseEvent) : void
      {
         this.greenbut2_clickHandler();
      }
      
      private function _PopUpLogin_BlueBut1_i() : BlueBut
      {
         var _loc1_:BlueBut = new BlueBut();
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.___PopUpLogin_BlueBut1_click);
         _loc1_.id = "_PopUpLogin_BlueBut1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogin_BlueBut1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogin_BlueBut1",this._PopUpLogin_BlueBut1);
         return _loc1_;
      }
      
      public function ___PopUpLogin_BlueBut1_click(param1:MouseEvent) : void
      {
         this.bluebut1_clickHandler(param1);
      }
      
      private function _PopUpLogin_OrangeBut1_c() : OrangeBut
      {
         var _loc1_:OrangeBut = new OrangeBut();
         _loc1_.percentWidth = 100;
         _loc1_.title = "Войти через vkontakte.ru";
         _loc1_.addEventListener("click",this.___PopUpLogin_OrangeBut1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___PopUpLogin_OrangeBut1_click(param1:MouseEvent) : void
      {
         var _loc2_:String = SH.app.pageURL;
         if(_loc2_.indexOf("//vreale.tv") == -1)
         {
            _loc2_ = _loc2_.replace("?","__voprosik__");
            _loc2_ = "http://vreale.tv/redmm.php?b=" + unescape(_loc2_);
         }
         navigateToURL(new URLRequest("http://api.vkontakte.ru/oauth/authorize?client_id=2308618&response_type=code&redirect_uri=" + _loc2_),"_self");
         hide();
         SH.app.preText = "Подключаюсь к vkontakte.ru...";
      }
      
      private function _PopUpLogin_OrangeBut2_c() : OrangeBut
      {
         var _loc1_:OrangeBut = new OrangeBut();
         _loc1_.percentWidth = 100;
         _loc1_.title = "Войти через mail.ru";
         _loc1_.addEventListener("click",this.___PopUpLogin_OrangeBut2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___PopUpLogin_OrangeBut2_click(param1:MouseEvent) : void
      {
         var _loc2_:String = SH.app.pageURL;
         if(_loc2_.indexOf("//vreale.tv") == -1)
         {
            _loc2_ = _loc2_.replace("?","__voprosik__");
            _loc2_ = "http://vreale.tv/redmm.php?b=" + unescape(_loc2_);
         }
         navigateToURL(new URLRequest("https://connect.mail.ru/oauth/authorize?client_id=615900&response_type=code&redirect_uri=" + _loc2_),"_self");
         hide();
         SH.app.preText = "Подключаюсь к mail.ru...";
      }
      
      private function _PopUpLogin_OrangeBut3_i() : OrangeBut
      {
         var _loc1_:OrangeBut = new OrangeBut();
         _loc1_.percentWidth = 100;
         _loc1_.title = "Войти через google.com";
         _loc1_.addEventListener("click",this.___PopUpLogin_OrangeBut3_click);
         _loc1_.id = "_PopUpLogin_OrangeBut3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogin_OrangeBut3 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogin_OrangeBut3",this._PopUpLogin_OrangeBut3);
         return _loc1_;
      }
      
      public function ___PopUpLogin_OrangeBut3_click(param1:MouseEvent) : void
      {
         SH.app.pageURL = "http://vreale.tv";
         navigateToURL(new URLRequest("http://mrtigra.ru/ru_login.php"),"_self");
         hide();
      }
      
      private function _PopUpLogin_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Забыли пароль?";
         _loc1_.addEventListener("click",this.___PopUpLogin_Link1_click);
         _loc1_.id = "_PopUpLogin_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogin_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogin_Link1",this._PopUpLogin_Link1);
         return _loc1_;
      }
      
      public function ___PopUpLogin_Link1_click(param1:MouseEvent) : void
      {
         hide();
         var _loc2_:PopUpReg = new PopUpReg();
         _loc2_.preEmailText = this.inputEmail.text;
         _loc2_.title = "Смена пароля";
         _loc2_.isNew = true;
         SH.app.popuper.show(_loc2_);
      }
      
      private function _PopUpLogin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpLogin_Label1.styleName");
         result[1] = new Binding(this,null,null,"_PopUpLogin_Label1.text","message");
         result[2] = new Binding(this,null,null,"_PopUpLogin_Label1.visible","message");
         result[3] = new Binding(this,null,null,"_PopUpLogin_Label1.includeInLayout","message");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","invalid_email");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpLogin_Label2.text");
         result[5] = new Binding(this,function():Object
         {
            return StyleName.smallText;
         },null,"_PopUpLogin_Label2.styleName");
         result[6] = new Binding(this,function():Boolean
         {
            return errorEmail;
         },null,"_PopUpLogin_Label2.visible");
         result[7] = new Binding(this,function():Boolean
         {
            return errorEmail;
         },null,"_PopUpLogin_Label2.includeInLayout");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","enter_your_email");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputEmail.defaultText");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = WordUtils.nowhite;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputEmail.restrict");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","your_password");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"inputPassword.defaultText");
         result[11] = new Binding(this,function():Boolean
         {
            return !SH.app.noSave;
         },null,"memory.selected");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","remember_me");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"memory.label");
         result[13] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","login");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpLogin_GreenBut1.title");
         result[14] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","register");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpLogin_BlueBut1.title");
         result[15] = new Binding(this,function():Boolean
         {
            return !SH.app.regInSite;
         },null,"_PopUpLogin_BlueBut1.showed");
         result[16] = new Binding(this,function():Boolean
         {
            return SH.app.pageURL.indexOf("mrtigra.ru/ru.php") > -1;
         },null,"_PopUpLogin_OrangeBut3.showed");
         result[17] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpLogin_Link1.styleName");
         return result;
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
      public function get memory() : CheckBox
      {
         return this._1077756671memory;
      }
      
      public function set memory(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1077756671memory;
         if(_loc2_ !== param1)
         {
            this._1077756671memory = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"memory",_loc2_,param1));
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
      public function get message() : String
      {
         return this._954925063message;
      }
      
      public function set message(param1:String) : void
      {
         var _loc2_:Object = this._954925063message;
         if(_loc2_ !== param1)
         {
            this._954925063message = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"message",_loc2_,param1));
            }
         }
      }
   }
}

