package com.iv.sh.ui.inputform
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
   import spark.components.RichEditableText;
   import spark.events.TextOperationEvent;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class InputForm extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _InputForm_BitmapImage3:BitmapImage;
      
      private var _100358090input:RichEditableText;
      
      private var _1979886041sendBut:SendFormBut;
      
      private var _110371416title:String;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1602416228editable:Boolean = true;
      
      private var _3556653text:String;
      
      private var _381878489maxChars:int;
      
      private var _336545092restrict:String;
      
      private var _1859474999hideSendBut:Boolean;
      
      public var onSend:Function;
      
      private var _embed_mxml__assets_chat_input_m_png_1668176362:Class;
      
      private var _embed_mxml__assets_chat_input_l_png_1662150372:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function InputForm()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_chat_input_m_png_1668176362 = InputForm__embed_mxml__assets_chat_input_m_png_1668176362;
         this._embed_mxml__assets_chat_input_l_png_1662150372 = InputForm__embed_mxml__assets_chat_input_l_png_1662150372;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._InputForm_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ui_inputform_InputFormWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return InputForm[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 100;
         this.gap = 0;
         this.mxmlContent = [this._InputForm_Group1_c(),this._InputForm_SendFormBut1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         InputForm._watcherSetupUtil = param1;
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
      
      private function _InputForm_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._InputForm_HGroup2_c(),this._InputForm_RichEditableText1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InputForm_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._InputForm_BitmapImage1_c(),this._InputForm_BitmapImage2_c(),this._InputForm_BitmapImage3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InputForm_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_input_l_png_1662150372;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _InputForm_BitmapImage2_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.percentWidth = 100;
         _loc1_.source = this._embed_mxml__assets_chat_input_m_png_1668176362;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _InputForm_BitmapImage3_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_chat_input_l_png_1662150372;
         _loc1_.scaleX = -1;
         _loc1_.initialized(this,"_InputForm_BitmapImage3");
         this._InputForm_BitmapImage3 = _loc1_;
         BindingManager.executeBindings(this,"_InputForm_BitmapImage3",this._InputForm_BitmapImage3);
         return _loc1_;
      }
      
      private function _InputForm_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         _loc1_.heightInLines = 1;
         _loc1_.lineBreak = "explicit";
         _loc1_.percentWidth = 100;
         _loc1_.multiline = false;
         _loc1_.focusEnabled = false;
         _loc1_.right = 4;
         _loc1_.left = 5;
         _loc1_.setStyle("paddingTop",8);
         _loc1_.addEventListener("change",this.__input_change);
         _loc1_.id = "input";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.input = _loc1_;
         BindingManager.executeBindings(this,"input",this.input);
         return _loc1_;
      }
      
      public function __input_change(param1:TextOperationEvent) : void
      {
         this.text = this.input.text;
         dispatchEvent(param1);
      }
      
      private function _InputForm_SendFormBut1_i() : SendFormBut
      {
         var _loc1_:SendFormBut = new SendFormBut();
         _loc1_.addEventListener("click",this.__sendBut_click);
         _loc1_.id = "sendBut";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sendBut = _loc1_;
         BindingManager.executeBindings(this,"sendBut",this.sendBut);
         return _loc1_;
      }
      
      public function __sendBut_click(param1:MouseEvent) : void
      {
         if(Boolean(this.onSend))
         {
            this.onSend(this.input.text);
         }
         var _loc2_:InputFormEvent = new InputFormEvent("send");
         _loc2_.text = this.input.text;
         dispatchEvent(_loc2_);
      }
      
      private function _InputForm_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,null,null,"_InputForm_BitmapImage3.visible","hideSendBut");
         result[1] = new Binding(this,null,null,"_InputForm_BitmapImage3.includeInLayout","hideSendBut");
         result[2] = new Binding(this,null,null,"input.restrict","restrict");
         result[3] = new Binding(this,null,null,"input.editable","editable");
         result[4] = new Binding(this,null,null,"input.text","text");
         result[5] = new Binding(this,null,null,"input.maxChars","maxChars");
         result[6] = new Binding(this,null,null,"sendBut.title","title");
         result[7] = new Binding(this,function():Boolean
         {
            return !hideSendBut;
         },null,"sendBut.visible");
         result[8] = new Binding(this,function():Boolean
         {
            return !hideSendBut;
         },null,"sendBut.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : RichEditableText
      {
         return this._100358090input;
      }
      
      public function set input(param1:RichEditableText) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sendBut() : SendFormBut
      {
         return this._1979886041sendBut;
      }
      
      public function set sendBut(param1:SendFormBut) : void
      {
         var _loc2_:Object = this._1979886041sendBut;
         if(_loc2_ !== param1)
         {
            this._1979886041sendBut = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sendBut",_loc2_,param1));
            }
         }
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
      public function get editable() : Boolean
      {
         return this._1602416228editable;
      }
      
      public function set editable(param1:Boolean) : void
      {
         var _loc2_:Object = this._1602416228editable;
         if(_loc2_ !== param1)
         {
            this._1602416228editable = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"editable",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get text() : String
      {
         return this._3556653text;
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:Object = this._3556653text;
         if(_loc2_ !== param1)
         {
            this._3556653text = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxChars() : int
      {
         return this._381878489maxChars;
      }
      
      public function set maxChars(param1:int) : void
      {
         var _loc2_:Object = this._381878489maxChars;
         if(_loc2_ !== param1)
         {
            this._381878489maxChars = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxChars",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrict() : String
      {
         return this._336545092restrict;
      }
      
      public function set restrict(param1:String) : void
      {
         var _loc2_:Object = this._336545092restrict;
         if(_loc2_ !== param1)
         {
            this._336545092restrict = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrict",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hideSendBut() : Boolean
      {
         return this._1859474999hideSendBut;
      }
      
      public function set hideSendBut(param1:Boolean) : void
      {
         var _loc2_:Object = this._1859474999hideSendBut;
         if(_loc2_ !== param1)
         {
            this._1859474999hideSendBut = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hideSendBut",_loc2_,param1));
            }
         }
      }
   }
}

