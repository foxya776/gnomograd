package com.iv.tooltip
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
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.managers.ToolTipManager;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class SHToolTip extends Group implements IToolTipExt, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _SHToolTip_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      protected var _dx:int = 10;
      
      protected var _dy:int = 2;
      
      private var _91291148_text:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SHToolTip()
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
         bindings = this._SHToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_tooltip_SHToolTipWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SHToolTip[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mouseEnabled = false;
         this.mxmlContent = [this._SHToolTip_Rect1_c(),this._SHToolTip_Label1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SHToolTip._watcherSetupUtil = param1;
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
      
      public function set text(param1:String) : void
      {
         this._text = param1;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function show(param1:int, param2:int) : void
      {
         if(!super.visible)
         {
            super.visible = true;
            this._dx = param1;
            this._dy = param2;
            SH.app.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove,false,0,true);
            this.move(SH.app.mouseX + this._dx,SH.app.mouseY + 20 + this._dy);
         }
      }
      
      public function hide() : void
      {
         if(super.visible)
         {
            super.visible = false;
            SH.app.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!(ToolTipManager.currentTarget is IToolTiped))
         {
            super.visible = param1;
            if(param1)
            {
               this._dx = 10;
               this._dy = 2;
               SH.app.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove,false,0,true);
            }
            else
            {
               SH.app.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            }
         }
         else
         {
            super.visible = false;
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         this.move(SH.app.mouseX + this._dx,SH.app.mouseY + 20 + this._dy);
         param1.updateAfterEvent();
      }
      
      override public function move(param1:Number, param2:Number) : void
      {
         this.onMove(param1,param2,width,height);
      }
      
      protected function onMove(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(initialized)
         {
            if(param1 < screen.x)
            {
               param1 = screen.x;
            }
            else if(param1 > screen.x + screen.width - param3)
            {
               param1 = screen.x + screen.width - param3;
            }
            if(param2 < screen.y)
            {
               param2 = screen.y;
            }
            else if(param2 > screen.y + screen.height - param4)
            {
               param2 = screen.y + screen.height - param4 - 20;
            }
         }
         this.x = param1;
         this.y = param2;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         this.onMove(x,y,param1,param2);
      }
      
      public function set target(param1:IToolTiped) : void
      {
         this.text = param1.toolTip;
      }
      
      private function _SHToolTip_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.stroke = this._SHToolTip_SolidColorStroke1_c();
         _loc1_.fill = this._SHToolTip_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SHToolTip_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 14925706;
         _loc1_.weight = 1;
         return _loc1_;
      }
      
      private function _SHToolTip_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16708506;
         return _loc1_;
      }
      
      private function _SHToolTip_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.maxWidth = 400;
         _loc1_.setStyle("color",5191456);
         _loc1_.setStyle("paddingLeft",4);
         _loc1_.setStyle("paddingRight",4);
         _loc1_.setStyle("paddingBottom",3);
         _loc1_.setStyle("paddingTop",5);
         _loc1_.id = "_SHToolTip_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SHToolTip_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_SHToolTip_Label1",this._SHToolTip_Label1);
         return _loc1_;
      }
      
      private function _SHToolTip_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_SHToolTip_Label1.text","_text");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _text() : String
      {
         return this._91291148_text;
      }
      
      public function set _text(param1:String) : void
      {
         var _loc2_:Object = this._91291148_text;
         if(_loc2_ !== param1)
         {
            this._91291148_text = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_text",_loc2_,param1));
            }
         }
      }
   }
}

