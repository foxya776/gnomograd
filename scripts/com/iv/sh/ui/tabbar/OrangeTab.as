package com.iv.sh.ui.tabbar
{
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class OrangeTab extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _OrangeTab_HGroup2:HGroup;
      
      public var _OrangeTab_HGroup3:HGroup;
      
      public var _OrangeTab_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _110371416title:String;
      
      private var _3423444over:Boolean;
      
      private var _1191572123selected:Boolean;
      
      private var _embed_mxml__assets_chat_tab_m_over_png_322141640:Class;
      
      private var _embed_mxml__assets_chat_tab_l_over_png_871735242:Class;
      
      private var _embed_mxml__assets_chat_select_tab_l_png_415689302:Class;
      
      private var _embed_mxml__assets_chat_select_tab_m_png_415677272:Class;
      
      private var _embed_mxml__assets_chat_tab_l_png_2108733130:Class;
      
      private var _embed_mxml__assets_chat_tab_m_png_2108721100:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function OrangeTab()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_chat_tab_m_over_png_322141640 = OrangeTab__embed_mxml__assets_chat_tab_m_over_png_322141640;
         this._embed_mxml__assets_chat_tab_l_over_png_871735242 = OrangeTab__embed_mxml__assets_chat_tab_l_over_png_871735242;
         this._embed_mxml__assets_chat_select_tab_l_png_415689302 = OrangeTab__embed_mxml__assets_chat_select_tab_l_png_415689302;
         this._embed_mxml__assets_chat_select_tab_m_png_415677272 = OrangeTab__embed_mxml__assets_chat_select_tab_m_png_415677272;
         this._embed_mxml__assets_chat_tab_l_png_2108733130 = OrangeTab__embed_mxml__assets_chat_tab_l_png_2108733130;
         this._embed_mxml__assets_chat_tab_m_png_2108721100 = OrangeTab__embed_mxml__assets_chat_tab_m_png_2108721100;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._OrangeTab_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_tabbar_OrangeTabWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return OrangeTab[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.buttonMode = true;
         this.mouseChildren = false;
         this.mxmlContent = [this._OrangeTab_HGroup1_c(),this._OrangeTab_HGroup2_i(),this._OrangeTab_HGroup3_i(),this._OrangeTab_Label1_i()];
         this.addEventListener("rollOver",this.___OrangeTab_Group1_rollOver);
         this.addEventListener("rollOut",this.___OrangeTab_Group1_rollOut);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         OrangeTab._watcherSetupUtil = param1;
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
      
      public function getTitleColor(param1:Boolean) : uint
      {
         if(param1)
         {
            return 13648896;
         }
         return 10040064;
      }
      
      private function _OrangeTab_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._OrangeTab_BitmapImage1_c(),this._OrangeTab_BitmapImage2_c(),this._OrangeTab_BitmapImage3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_tab_l_png_2108733130;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage2_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_tab_m_png_2108721100;
         _loc1_.percentWidth = 100;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage3_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_tab_l_png_2108733130;
         _loc1_.scaleX = -1;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._OrangeTab_BitmapImage4_c(),this._OrangeTab_BitmapImage5_c(),this._OrangeTab_BitmapImage6_c()];
         _loc1_.id = "_OrangeTab_HGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._OrangeTab_HGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_OrangeTab_HGroup2",this._OrangeTab_HGroup2);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage4_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_tab_l_over_png_871735242;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage5_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_tab_m_over_png_322141640;
         _loc1_.percentWidth = 100;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage6_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_tab_l_over_png_871735242;
         _loc1_.scaleX = -1;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._OrangeTab_BitmapImage7_c(),this._OrangeTab_BitmapImage8_c(),this._OrangeTab_BitmapImage9_c()];
         _loc1_.id = "_OrangeTab_HGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._OrangeTab_HGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_OrangeTab_HGroup3",this._OrangeTab_HGroup3);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage7_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_select_tab_l_png_415689302;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage8_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_select_tab_m_png_415677272;
         _loc1_.percentWidth = 100;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_BitmapImage9_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_select_tab_l_png_415689302;
         _loc1_.scaleX = -1;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OrangeTab_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.left = 12;
         _loc1_.right = 12;
         _loc1_.top = 11;
         _loc1_.setStyle("fontSize",14);
         _loc1_.id = "_OrangeTab_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._OrangeTab_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_OrangeTab_Label1",this._OrangeTab_Label1);
         return _loc1_;
      }
      
      public function ___OrangeTab_Group1_rollOver(param1:MouseEvent) : void
      {
         this.over = true;
      }
      
      public function ___OrangeTab_Group1_rollOut(param1:MouseEvent) : void
      {
         this.over = false;
      }
      
      private function _OrangeTab_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,null,null,"_OrangeTab_HGroup2.visible","over");
         result[1] = new Binding(this,null,null,"_OrangeTab_HGroup3.visible","selected");
         result[2] = new Binding(this,null,null,"_OrangeTab_Label1.text","title");
         result[3] = new Binding(this,function():uint
         {
            return getTitleColor(selected);
         },function(param1:uint):void
         {
            _OrangeTab_Label1.setStyle("color",param1);
         },"_OrangeTab_Label1.color");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get over() : Boolean
      {
         return this._3423444over;
      }
      
      public function set over(param1:Boolean) : void
      {
         var _loc2_:Object = this._3423444over;
         if(_loc2_ !== param1)
         {
            this._3423444over = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"over",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selected() : Boolean
      {
         return this._1191572123selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         var _loc2_:Object = this._1191572123selected;
         if(_loc2_ !== param1)
         {
            this._1191572123selected = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selected",_loc2_,param1));
            }
         }
      }
   }
}

