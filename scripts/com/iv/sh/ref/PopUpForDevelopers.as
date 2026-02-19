package com.iv.sh.ref
{
   import com.iv.sh.App;
   import com.iv.sh.InstCode;
   import com.iv.sh.StyleName;
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
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.styles.*;
   import spark.components.CheckBox;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PopUpForDevelopers extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpForDevelopers_InputForm1:InputForm;
      
      public var _PopUpForDevelopers_Label1:Label;
      
      public var _PopUpForDevelopers_Label2:Label;
      
      private var _769033961checkSubApp:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml__assets_money_png_1568128266:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpForDevelopers()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_money_png_1568128266 = PopUpForDevelopers__embed_mxml__assets_money_png_1568128266;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpForDevelopers_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpForDevelopersWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpForDevelopers[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 520;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpForDevelopers_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpForDevelopers._watcherSetupUtil = param1;
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
      
      private function onCopy(param1:String) : void
      {
         System.setClipboard(param1);
      }
      
      protected function hcpricebut1_clickHandler(param1:MouseEvent) : void
      {
         SH.app.api.connection.call("buyReferal",new Responder(this.onBuyReferal));
      }
      
      private function onBuyReferal(param1:int) : void
      {
         if(param1 == 1)
         {
            Alert.show("Вы забанены и не можете размещать приложение на своей странице");
         }
      }
      
      internal function getLabelCheckSubApp(param1:String) : String
      {
         if(param1 == App.APP2)
         {
            return "Вместе с «Реалити шоу»";
         }
         return "Вместе с «Реальным городом»";
      }
      
      private function _PopUpForDevelopers_Array1_c() : Array
      {
         return [this._PopUpForDevelopers_VGroup1_c()];
      }
      
      private function _PopUpForDevelopers_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 10;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = -10;
         _loc1_.bottom = 10;
         _loc1_.mxmlContent = [this._PopUpForDevelopers_Group1_c(),this._PopUpForDevelopers_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PopUpForDevelopers_Rect1_c(),this._PopUpForDevelopers_BitmapImage1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.stroke = this._PopUpForDevelopers_SolidColorStroke1_c();
         _loc1_.fill = this._PopUpForDevelopers_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16749634;
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16760961;
         _loc1_.alpha = 1;
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.left = 6;
         _loc1_.top = 6;
         _loc1_.right = 6;
         _loc1_.bottom = 6;
         _loc1_.source = this._embed_mxml__assets_money_png_1568128266;
         _loc1_.filters = [this._PopUpForDevelopers_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.alpha = 0.8;
         _loc1_.inner = true;
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PopUpForDevelopers_Label1_i(),this._PopUpForDevelopers_InputForm1_i(),this._PopUpForDevelopers_CheckBox1_i(),this._PopUpForDevelopers_Label2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpForDevelopers_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpForDevelopers_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpForDevelopers_Label1",this._PopUpForDevelopers_Label1);
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_InputForm1_i() : InputForm
      {
         var _loc1_:InputForm = new InputForm();
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 10000;
         _loc1_.editable = false;
         _loc1_.title = "Скопировать";
         _loc1_.id = "_PopUpForDevelopers_InputForm1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpForDevelopers_InputForm1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpForDevelopers_InputForm1",this._PopUpForDevelopers_InputForm1);
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.buttonMode = true;
         _loc1_.id = "checkSubApp";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkSubApp = _loc1_;
         BindingManager.executeBindings(this,"checkSubApp",this.checkSubApp);
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.alpha = 0.7;
         _loc1_.text = "Запрещено размещение приложения на сайтах нарушающих законы Российской Федерации в этом случае приложение будет заблокировано, а ваш баланс аннулирован.  Так же администрация оставляет за собой право заблокировать приложение на вашем сайте на своё усмотрение (средства с баланса будут выплачены).";
         _loc1_.setStyle("fontSize",11);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpForDevelopers_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpForDevelopers_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpForDevelopers_Label2",this._PopUpForDevelopers_Label2);
         return _loc1_;
      }
      
      private function _PopUpForDevelopers_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpForDevelopers_Label1.styleName");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = "Разместите приложение «" + App.getTitle(SH.app.rsloader.appLoader.app.id) + "» на странице своего сайта и получайте 20% от платежей ваших пользователей." + "\n" + " Код для вставки приложения:";
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpForDevelopers_Label1.text");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = InstCode.getText(SH.app.userId,true,SH.app.regInSite,SH.app.rsloader.appLoader.app.id,checkSubApp.selected);
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpForDevelopers_InputForm1.text");
         result[3] = new Binding(this,function():Function
         {
            return onCopy;
         },null,"_PopUpForDevelopers_InputForm1.onSend");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = getLabelCheckSubApp(SH.app.rsloader.appLoader.app.id);
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"checkSubApp.label");
         result[5] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpForDevelopers_Label2.styleName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get checkSubApp() : CheckBox
      {
         return this._769033961checkSubApp;
      }
      
      public function set checkSubApp(param1:CheckBox) : void
      {
         var _loc2_:Object = this._769033961checkSubApp;
         if(_loc2_ !== param1)
         {
            this._769033961checkSubApp = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkSubApp",_loc2_,param1));
            }
         }
      }
   }
}

