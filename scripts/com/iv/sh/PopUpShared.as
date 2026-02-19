package com.iv.sh
{
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class PopUpShared extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpShared_Link1:Link;
      
      public var _PopUpShared_Link2:Link;
      
      public var _PopUpShared_Link3:Link;
      
      public var _PopUpShared_Link4:Link;
      
      public var _PopUpShared_Link5:Link;
      
      public var _PopUpShared_Link6:Link;
      
      public var _PopUpShared_Link7:Link;
      
      public var _PopUpShared_Link8:Link;
      
      public var _PopUpShared_Link9:Link;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      internal var nameApp:String = "Реалити шоу онлайн";
      
      internal var descr:String = "Знакомься, общайся, влюбляйся!";
      
      internal var image:String = "http://vreale.tv/i.jpg";
      
      private var _embed_mxml__assets_tw_png_1228363446:Class;
      
      private var _embed_mxml__assets_ff_png_1734879428:Class;
      
      private var _embed_mxml__assets_lj_png_1639437496:Class;
      
      private var _embed_mxml__assets_mm_png_1631049532:Class;
      
      private var _embed_mxml__assets_fb_png_1727539404:Class;
      
      private var _embed_mxml__assets_vk_png_1102563350:Class;
      
      private var _embed_mxml__assets_od_png_1494701654:Class;
      
      private var _embed_mxml__assets_mk_png_1627871032:Class;
      
      private var _embed_mxml__assets_ya_png_1498928716:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpShared()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_tw_png_1228363446 = PopUpShared__embed_mxml__assets_tw_png_1228363446;
         this._embed_mxml__assets_ff_png_1734879428 = PopUpShared__embed_mxml__assets_ff_png_1734879428;
         this._embed_mxml__assets_lj_png_1639437496 = PopUpShared__embed_mxml__assets_lj_png_1639437496;
         this._embed_mxml__assets_mm_png_1631049532 = PopUpShared__embed_mxml__assets_mm_png_1631049532;
         this._embed_mxml__assets_fb_png_1727539404 = PopUpShared__embed_mxml__assets_fb_png_1727539404;
         this._embed_mxml__assets_vk_png_1102563350 = PopUpShared__embed_mxml__assets_vk_png_1102563350;
         this._embed_mxml__assets_od_png_1494701654 = PopUpShared__embed_mxml__assets_od_png_1494701654;
         this._embed_mxml__assets_mk_png_1627871032 = PopUpShared__embed_mxml__assets_mk_png_1627871032;
         this._embed_mxml__assets_ya_png_1498928716 = PopUpShared__embed_mxml__assets_ya_png_1498928716;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpShared_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_PopUpSharedWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpShared[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.title = "Рассказать друзьям";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpShared_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpShared._watcherSetupUtil = param1;
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
      
      private function _PopUpShared_Array1_c() : Array
      {
         return [this._PopUpShared_VGroup1_c()];
      }
      
      private function _PopUpShared_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._PopUpShared_HGroup1_c(),this._PopUpShared_HGroup2_c(),this._PopUpShared_HGroup3_c(),this._PopUpShared_HGroup4_c(),this._PopUpShared_HGroup5_c(),this._PopUpShared_HGroup6_c(),this._PopUpShared_HGroup7_c(),this._PopUpShared_HGroup8_c(),this._PopUpShared_HGroup9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage1_c(),this._PopUpShared_Link1_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_vk_png_1102563350;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Вконтакте";
         _loc1_.id = "_PopUpShared_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link1",this._PopUpShared_Link1);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=vkontakte&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage2_c(),this._PopUpShared_Link2_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage2_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_ya_png_1498928716;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link2_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Я.ру";
         _loc1_.id = "_PopUpShared_Link2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link2",this._PopUpShared_Link2);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup2_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=yaru&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage3_c(),this._PopUpShared_Link3_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup3_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage3_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_od_png_1494701654;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link3_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Одноклассники";
         _loc1_.id = "_PopUpShared_Link3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link3 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link3",this._PopUpShared_Link3);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup3_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=odnoklassniki&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage4_c(),this._PopUpShared_Link4_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup4_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage4_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_lj_png_1639437496;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link4_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Livejournal";
         _loc1_.id = "_PopUpShared_Link4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link4 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link4",this._PopUpShared_Link4);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup4_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=lj&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage5_c(),this._PopUpShared_Link5_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup5_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage5_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_mm_png_1631049532;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link5_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Мой мир";
         _loc1_.id = "_PopUpShared_Link5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link5 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link5",this._PopUpShared_Link5);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup5_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=moimir&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage6_c(),this._PopUpShared_Link6_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup6_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage6_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_mk_png_1627871032;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link6_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Мой Круг";
         _loc1_.id = "_PopUpShared_Link6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link6 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link6",this._PopUpShared_Link6);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup6_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=moikrug&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage7_c(),this._PopUpShared_Link7_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup7_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage7_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_fb_png_1727539404;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link7_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Facebook";
         _loc1_.id = "_PopUpShared_Link7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link7 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link7",this._PopUpShared_Link7);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup7_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=facebook&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage8_c(),this._PopUpShared_Link8_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup8_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage8_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_tw_png_1228363446;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link8_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Twitter";
         _loc1_.id = "_PopUpShared_Link8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link8 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link8",this._PopUpShared_Link8);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup8_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=twitter&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_HGroup9_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.buttonMode = true;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PopUpShared_BitmapImage9_c(),this._PopUpShared_Link9_i()];
         _loc1_.addEventListener("click",this.___PopUpShared_HGroup9_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpShared_BitmapImage9_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_ff_png_1734879428;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpShared_Link9_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "FriendFeed";
         _loc1_.id = "_PopUpShared_Link9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpShared_Link9 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpShared_Link9",this._PopUpShared_Link9);
         return _loc1_;
      }
      
      public function ___PopUpShared_HGroup9_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://share.yandex.ru/go.xml?service=friendfeed&url=" + SH.app.pageURL + "&title=" + this.nameApp + "&description=" + this.descr + "&image=" + this.image),"share");
      }
      
      private function _PopUpShared_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link1.styleName");
         result[1] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link2.styleName");
         result[2] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link3.styleName");
         result[3] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link4.styleName");
         result[4] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link5.styleName");
         result[5] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link6.styleName");
         result[6] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link7.styleName");
         result[7] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link8.styleName");
         result[8] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpShared_Link9.styleName");
         return result;
      }
   }
}

