package com.iv.sh.ui
{
   import com.iv.sh.utils.Compare;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TextInputDefault extends MyTextInput implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {
         "promptDisplay":false,
         "textDisplay":false
      };
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _436959474defaultText:String;
      
      private var _1180221349isPass:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function TextInputDefault()
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
         bindings = this._TextInputDefault_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_TextInputDefaultWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return TextInputDefault[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.addEventListener("focusIn",this.___TextInputDefault_MyTextInput1_focusIn);
         this.addEventListener("focusOut",this.___TextInputDefault_MyTextInput1_focusOut);
         this.addEventListener("creationComplete",this.___TextInputDefault_MyTextInput1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         TextInputDefault._watcherSetupUtil = param1;
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
      
      protected function textinput1_focusInHandler(param1:FocusEvent) : void
      {
         if(text == this.defaultText)
         {
            text = "";
         }
      }
      
      protected function textinput1_focusOutHandler(param1:FocusEvent) : void
      {
         if(text == "")
         {
            text = this.defaultText;
         }
      }
      
      protected function textinput1_creationCompleteHandler(param1:FlexEvent) : void
      {
         if(text == "")
         {
            text = this.defaultText;
         }
      }
      
      public function getInputText() : String
      {
         if(text == this.defaultText)
         {
            return "";
         }
         return text;
      }
      
      public function ___TextInputDefault_MyTextInput1_focusIn(param1:FocusEvent) : void
      {
         this.textinput1_focusInHandler(param1);
      }
      
      public function ___TextInputDefault_MyTextInput1_focusOut(param1:FocusEvent) : void
      {
         this.textinput1_focusOutHandler(param1);
      }
      
      public function ___TextInputDefault_MyTextInput1_creationComplete(param1:FlexEvent) : void
      {
         this.textinput1_creationCompleteHandler(param1);
      }
      
      private function _TextInputDefault_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return Compare.and(isPass,text != defaultText);
         },null,"this.displayAsPassword");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get defaultText() : String
      {
         return this._436959474defaultText;
      }
      
      public function set defaultText(param1:String) : void
      {
         var _loc2_:Object = this._436959474defaultText;
         if(_loc2_ !== param1)
         {
            this._436959474defaultText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isPass() : Boolean
      {
         return this._1180221349isPass;
      }
      
      public function set isPass(param1:Boolean) : void
      {
         var _loc2_:Object = this._1180221349isPass;
         if(_loc2_ !== param1)
         {
            this._1180221349isPass = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isPass",_loc2_,param1));
            }
         }
      }
   }
}

