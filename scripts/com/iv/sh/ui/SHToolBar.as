package com.iv.sh.ui
{
   import com.iv.sh.App;
   import com.iv.sh.PopUpShared;
   import com.iv.sh.ref.PopUpForDevelopers;
   import com.iv.sh.ref.PopUpRef;
   import com.iv.sh.ref.PopUpRefs;
   import com.iv.sh.reg.PopUpLogInSite;
   import com.iv.sh.reg.PopUpLogin;
   import com.iv.sh.reg.PopUpReg;
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class SHToolBar extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _SHToolBar_Link1:Link;
      
      public var _SHToolBar_Link10:Link;
      
      public var _SHToolBar_Link11:Link;
      
      public var _SHToolBar_Link12:Link;
      
      public var _SHToolBar_Link13:Link;
      
      public var _SHToolBar_Link2:Link;
      
      public var _SHToolBar_Link3:Link;
      
      public var _SHToolBar_Link4:Link;
      
      public var _SHToolBar_Link5:Link;
      
      public var _SHToolBar_Link6:Link;
      
      public var _SHToolBar_Link8:Link;
      
      public var _SHToolBar_Link9:Link;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SHToolBar()
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
         bindings = this._SHToolBar_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_SHToolBarWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SHToolBar[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.gap = 20;
         this.verticalAlign = "middle";
         this.mxmlContent = [this._SHToolBar_Link1_i(),this._SHToolBar_Link2_i(),this._SHToolBar_Link3_i(),this._SHToolBar_Link4_i(),this._SHToolBar_Link5_i(),this._SHToolBar_Link6_i(),this._SHToolBar_Link7_c(),this._SHToolBar_Link8_i(),this._SHToolBar_Link9_i(),this._SHToolBar_Link10_i(),this._SHToolBar_Link11_i(),this._SHToolBar_Link12_i(),this._SHToolBar_Link13_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SHToolBar._watcherSetupUtil = param1;
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
      
      protected function link2_clickHandler(param1:MouseEvent) : void
      {
         SH.app.logOut();
         SH.app.clearLoginData();
      }
      
      protected function link5_clickHandler(param1:MouseEvent) : void
      {
         if(SH.app.userId)
         {
            SH.app.popuper.show(new PopUpForDevelopers());
         }
         else
         {
            SH.app.showGuest();
         }
      }
      
      protected function link6_clickHandler(param1:MouseEvent) : void
      {
         SH.app.popuper.show(new PopUpRef());
      }
      
      protected function link7_clickHandler(param1:MouseEvent) : void
      {
         SH.app.popuper.show(new PopUpRefs());
      }
      
      protected function link8_clickHandler(param1:MouseEvent) : void
      {
         if(SH.app.regInSite)
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
         else
         {
            SH.app.popuper.show(new PopUpReg());
         }
      }
      
      protected function link9_clickHandler(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://gnomograd.com/category/news/"),"_blank");
      }
      
      protected function link10_clickHandler(param1:MouseEvent) : void
      {
         SH.app.popuper.show(new PopUpChangeVersion());
      }
      
      internal function getTextAddPartner(param1:String) : String
      {
         return resourceManager.getString("base","partner_app_code");
      }
      
      private function _SHToolBar_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.addEventListener("click",this.___SHToolBar_Link1_click);
         _loc1_.id = "_SHToolBar_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link1",this._SHToolBar_Link1);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link1_click(param1:MouseEvent) : void
      {
         if(SH.app.regInSite)
         {
            SH.app.popuper.show(new PopUpLogInSite());
         }
         else
         {
            SH.app.popuper.show(new PopUpLogin());
         }
      }
      
      private function _SHToolBar_Link2_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.addEventListener("click",this.___SHToolBar_Link2_click);
         _loc1_.id = "_SHToolBar_Link2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link2 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link2",this._SHToolBar_Link2);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link2_click(param1:MouseEvent) : void
      {
         this.link2_clickHandler(param1);
      }
      
      private function _SHToolBar_Link3_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.addEventListener("click",this.___SHToolBar_Link3_click);
         _loc1_.id = "_SHToolBar_Link3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link3 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link3",this._SHToolBar_Link3);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link3_click(param1:MouseEvent) : void
      {
         this.link8_clickHandler(param1);
      }
      
      private function _SHToolBar_Link4_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.addEventListener("click",this.___SHToolBar_Link4_click);
         _loc1_.id = "_SHToolBar_Link4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link4 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link4",this._SHToolBar_Link4);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link4_click(param1:MouseEvent) : void
      {
         this.link6_clickHandler(param1);
      }
      
      private function _SHToolBar_Link5_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.addEventListener("click",this.___SHToolBar_Link5_click);
         _loc1_.id = "_SHToolBar_Link5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link5 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link5",this._SHToolBar_Link5);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link5_click(param1:MouseEvent) : void
      {
         this.link7_clickHandler(param1);
      }
      
      private function _SHToolBar_Link6_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.addEventListener("click",this.___SHToolBar_Link6_click);
         _loc1_.id = "_SHToolBar_Link6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link6 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link6",this._SHToolBar_Link6);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link6_click(param1:MouseEvent) : void
      {
         this.link10_clickHandler(param1);
      }
      
      private function _SHToolBar_Link7_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Рассказать друзьям";
         _loc1_.addEventListener("click",this.___SHToolBar_Link7_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SHToolBar_Link7_click(param1:MouseEvent) : void
      {
         SH.app.popuper.show(new PopUpShared());
      }
      
      private function _SHToolBar_Link8_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "В город";
         _loc1_.addEventListener("click",this.___SHToolBar_Link8_click);
         _loc1_.id = "_SHToolBar_Link8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link8 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link8",this._SHToolBar_Link8);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link8_click(param1:MouseEvent) : void
      {
         SH.app.loadGame("mc");
      }
      
      private function _SHToolBar_Link9_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "В реалити шоу";
         _loc1_.addEventListener("click",this.___SHToolBar_Link9_click);
         _loc1_.id = "_SHToolBar_Link9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link9 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link9",this._SHToolBar_Link9);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link9_click(param1:MouseEvent) : void
      {
         if(SH.app.pageURL.indexOf("mrtigra") > -1 && !SH.app.parameters[App.APP1])
         {
            navigateToURL(new URLRequest("http://vreale.tv"),"_self");
         }
         else
         {
            SH.app.loadGame("live2");
         }
      }
      
      private function _SHToolBar_Link10_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "В чат-рулетку";
         _loc1_.addEventListener("click",this.___SHToolBar_Link10_click);
         _loc1_.id = "_SHToolBar_Link10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link10 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link10",this._SHToolBar_Link10);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link10_click(param1:MouseEvent) : void
      {
         SH.app.loadGame(App.APP3);
      }
      
      private function _SHToolBar_Link11_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Новости";
         _loc1_.addEventListener("click",this.___SHToolBar_Link11_click);
         _loc1_.id = "_SHToolBar_Link11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link11 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link11",this._SHToolBar_Link11);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link11_click(param1:MouseEvent) : void
      {
         this.link9_clickHandler(param1);
      }
      
      private function _SHToolBar_Link12_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.setStyle("color",13369446);
         _loc1_.addEventListener("click",this.___SHToolBar_Link12_click);
         _loc1_.id = "_SHToolBar_Link12";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link12 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link12",this._SHToolBar_Link12);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link12_click(param1:MouseEvent) : void
      {
         this.link5_clickHandler(param1);
      }
      
      private function _SHToolBar_Link13_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.setStyle("color",13369446);
         _loc1_.addEventListener("click",this.___SHToolBar_Link13_click);
         _loc1_.id = "_SHToolBar_Link13";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolBar_Link13 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolBar_Link13",this._SHToolBar_Link13);
         return _loc1_;
      }
      
      public function ___SHToolBar_Link13_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://videobeseda.com/"),"_blank");
      }
      
      private function _SHToolBar_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","login");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link1.text");
         result[1] = new Binding(this,function():Boolean
         {
            return !SH.app.userId;
         },null,"_SHToolBar_Link1.showed");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","logout");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link2.text");
         result[3] = new Binding(this,function():Boolean
         {
            return SH.app.userId;
         },null,"_SHToolBar_Link2.showed");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","register");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link3.text");
         result[5] = new Binding(this,function():Boolean
         {
            return !SH.app.userId;
         },null,"_SHToolBar_Link3.showed");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","personal_account");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link4.text");
         result[7] = new Binding(this,function():Boolean
         {
            return SH.app.userId == SH.app.refId;
         },null,"_SHToolBar_Link4.showed");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","partners");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link5.text");
         result[9] = new Binding(this,function():Boolean
         {
            return SH.app.admin;
         },null,"_SHToolBar_Link5.showed");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","change_version");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link6.text");
         result[11] = new Binding(this,function():Boolean
         {
            return SH.app.admin;
         },null,"_SHToolBar_Link6.showed");
         result[12] = new Binding(this,function():Boolean
         {
            return (SH.app.rsloader.appLoader.app.id == App.APP1 || SH.app.rsloader.appLoader.app.id == App.APP3) && Boolean(SH.app.parameters[App.APP2]);
         },null,"_SHToolBar_Link8.showed");
         result[13] = new Binding(this,function():Boolean
         {
            return (SH.app.rsloader.appLoader.app.id == App.APP2 || SH.app.rsloader.appLoader.app.id == App.APP3) && (Boolean(SH.app.parameters[App.APP1]) || SH.app.pageURL.indexOf("mrtigra") > -1);
         },null,"_SHToolBar_Link9.showed");
         result[14] = new Binding(this,function():Boolean
         {
            return (SH.app.rsloader.appLoader.app.id == App.APP1 || SH.app.rsloader.appLoader.app.id == App.APP2) && Boolean(SH.app.parameters[App.APP3]);
         },null,"_SHToolBar_Link10.showed");
         result[15] = new Binding(this,function():Boolean
         {
            return SH.app.rsloader.appLoader.app.id == App.APP2;
         },null,"_SHToolBar_Link11.showed");
         result[16] = new Binding(this,function():String
         {
            var _loc1_:* = getTextAddPartner(SH.app.rsloader.appLoader.app.id);
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link12.text");
         result[17] = new Binding(this,function():Boolean
         {
            return !SH.app.regInSite && Boolean(SH.app.rsloader.appLoader.app.id) && SH.app.mode == "ba";
         },null,"_SHToolBar_Link12.showed");
         result[18] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","roulette_site");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SHToolBar_Link13.text");
         result[19] = new Binding(this,function():Boolean
         {
            return SH.app.pageURL.indexOf("vreale.tv") > -1 && !SH.app.parameters[App.APP3];
         },null,"_SHToolBar_Link13.showed");
         return result;
      }
   }
}

