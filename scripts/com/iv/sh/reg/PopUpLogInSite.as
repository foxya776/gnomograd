package com.iv.sh.reg
{
   import com.iv.sh.StyleName;
   import com.iv.sh.ui.BlueBut;
   import com.iv.sh.ui.GreenBut;
   import com.iv.sh.ui.Link;
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
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PopUpLogInSite extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpLogInSite_Label1:Label;
      
      public var _PopUpLogInSite_Link1:Link;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _954925063message:String;
      
      private var _embed_mxml__assets_police_for_guest_png_1859455626:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpLogInSite()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_police_for_guest_png_1859455626 = PopUpLogInSite__embed_mxml__assets_police_for_guest_png_1859455626;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpLogInSite_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_reg_PopUpLogInSiteWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpLogInSite[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.priority = 101;
         this.width = 300;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpLogInSite_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpLogInSite._watcherSetupUtil = param1;
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
      
      private function _PopUpLogInSite_Array1_c() : Array
      {
         return [this._PopUpLogInSite_VGroup1_c()];
      }
      
      private function _PopUpLogInSite_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._PopUpLogInSite_Group1_c(),this._PopUpLogInSite_Label1_i(),this._PopUpLogInSite_GreenBut1_c(),this._PopUpLogInSite_BlueBut1_c(),this._PopUpLogInSite_Link1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpLogInSite_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PopUpLogInSite_Rect1_c(),this._PopUpLogInSite_BitmapImage1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpLogInSite_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.stroke = this._PopUpLogInSite_SolidColorStroke1_c();
         _loc1_.fill = this._PopUpLogInSite_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpLogInSite_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16749634;
         return _loc1_;
      }
      
      private function _PopUpLogInSite_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16760961;
         _loc1_.alpha = 1;
         return _loc1_;
      }
      
      private function _PopUpLogInSite_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.left = 6;
         _loc1_.top = 6;
         _loc1_.right = 6;
         _loc1_.bottom = 6;
         _loc1_.source = this._embed_mxml__assets_police_for_guest_png_1859455626;
         _loc1_.filters = [this._PopUpLogInSite_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpLogInSite_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.alpha = 0.8;
         _loc1_.inner = true;
         return _loc1_;
      }
      
      private function _PopUpLogInSite_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpLogInSite_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogInSite_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogInSite_Label1",this._PopUpLogInSite_Label1);
         return _loc1_;
      }
      
      private function _PopUpLogInSite_GreenBut1_c() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.percentWidth = 100;
         _loc1_.title = "Войти";
         _loc1_.addEventListener("click",this.___PopUpLogInSite_GreenBut1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___PopUpLogInSite_GreenBut1_click(param1:MouseEvent) : void
      {
         if(SH.app.loginPage)
         {
            navigateToURL(new URLRequest(SH.app.loginPage));
         }
         else
         {
            Alert.show("Администратор не указал страницу входа");
         }
      }
      
      private function _PopUpLogInSite_BlueBut1_c() : BlueBut
      {
         var _loc1_:BlueBut = new BlueBut();
         _loc1_.percentWidth = 100;
         _loc1_.title = "Зарегистрироваться";
         _loc1_.addEventListener("click",this.___PopUpLogInSite_BlueBut1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___PopUpLogInSite_BlueBut1_click(param1:MouseEvent) : void
      {
         if(SH.app.regPage)
         {
            navigateToURL(new URLRequest(SH.app.regPage));
         }
         else
         {
            Alert.show("Администратор не указал страницу регистрации");
         }
      }
      
      private function _PopUpLogInSite_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Запасной вход";
         _loc1_.addEventListener("click",this.___PopUpLogInSite_Link1_click);
         _loc1_.id = "_PopUpLogInSite_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpLogInSite_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpLogInSite_Link1",this._PopUpLogInSite_Link1);
         return _loc1_;
      }
      
      public function ___PopUpLogInSite_Link1_click(param1:MouseEvent) : void
      {
         hide();
         SH.app.popuper.show(new PopUpLogin());
      }
      
      private function _PopUpLogInSite_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpLogInSite_Label1.styleName");
         result[1] = new Binding(this,null,null,"_PopUpLogInSite_Label1.text","message");
         result[2] = new Binding(this,null,null,"_PopUpLogInSite_Label1.visible","message");
         result[3] = new Binding(this,null,null,"_PopUpLogInSite_Label1.includeInLayout","message");
         result[4] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpLogInSite_Link1.styleName");
         return result;
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

