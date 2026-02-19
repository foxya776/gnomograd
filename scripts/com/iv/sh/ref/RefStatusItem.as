package com.iv.sh.ref
{
   import com.iv.sh.RefStatus;
   import com.iv.sh.ui.Link;
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
   import mx.controls.dataGridClasses.MXDataGridItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class RefStatusItem extends MXDataGridItemRenderer implements IBindingClient, IListItemRenderer
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _RefStatusItem_Link1:Link;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RefStatusItem()
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
         bindings = this._RefStatusItem_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_RefStatusItemWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RefStatusItem[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.mxmlContent = [this._RefStatusItem_HGroup1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         RefStatusItem._watcherSetupUtil = param1;
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
      
      private function getText(param1:int) : String
      {
         if(param1 == RefStatus.REF_OFF)
         {
            return "Off";
         }
         return "On";
      }
      
      private function getColor(param1:int) : uint
      {
         if(param1 == RefStatus.REF_OFF)
         {
            return 15471384;
         }
         return 6723840;
      }
      
      protected function itemrenderer1_clickHandler(param1:MouseEvent) : void
      {
         SH.app.api.connection.call("banReferal",new Responder(this.onBanReferal),Ref(data).id,Ref(data).status != RefStatus.REF_OFF);
      }
      
      private function onBanReferal(param1:int) : void
      {
         if(param1 == 1)
         {
            Alert.show("Эта возможность вам недоступна");
         }
         else if(param1 == 2)
         {
            if(Ref(data).status == RefStatus.REF_OFF)
            {
               Ref(data).status = RefStatus.REF_ON;
            }
            else
            {
               Ref(data).status = RefStatus.REF_OFF;
            }
         }
      }
      
      protected function link1_clickHandler(param1:MouseEvent) : void
      {
         SH.app.api.connection.call("deleteReferal",new Responder(this.onDeleteReferal),Ref(data).id);
      }
      
      private function onDeleteReferal(param1:int) : void
      {
         if(param1 == 1)
         {
            Alert.show("Эта возможность вам недоступна");
         }
         else if(param1 == 2)
         {
            RefsList(parent.parent.parent).provider.removeItem(data);
         }
      }
      
      private function _RefStatusItem_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = 8;
         _loc1_.paddingTop = 5;
         _loc1_.gap = 6;
         _loc1_.mxmlContent = [this._RefStatusItem_Link1_i(),this._RefStatusItem_Link2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RefStatusItem_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.width = 30;
         _loc1_.addEventListener("click",this.___RefStatusItem_Link1_click);
         _loc1_.id = "_RefStatusItem_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RefStatusItem_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_RefStatusItem_Link1",this._RefStatusItem_Link1);
         return _loc1_;
      }
      
      public function ___RefStatusItem_Link1_click(param1:MouseEvent) : void
      {
         this.itemrenderer1_clickHandler(param1);
      }
      
      private function _RefStatusItem_Link2_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Удалить";
         _loc1_.setStyle("color",15471384);
         _loc1_.addEventListener("click",this.___RefStatusItem_Link2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___RefStatusItem_Link2_click(param1:MouseEvent) : void
      {
         this.link1_clickHandler(param1);
      }
      
      private function _RefStatusItem_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getText(Ref(data).status);
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_RefStatusItem_Link1.text");
         result[1] = new Binding(this,function():uint
         {
            return getColor(Ref(data).status);
         },function(param1:uint):void
         {
            _RefStatusItem_Link1.setStyle("color",param1);
         },"_RefStatusItem_Link1.color");
         return result;
      }
   }
}

