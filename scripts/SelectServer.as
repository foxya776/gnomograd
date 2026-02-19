package
{
   import com.iv.sh.App;
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
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class SelectServer extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _SelectServer_Label1:Label;
      
      public var _SelectServer_ServerIcon3:ServerIcon;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _3556653text:String;
      
      private var _embed_mxml__assets_chat_1_jpg_1309301064:Class;
      
      private var _embed_mxml__assets_chat_3_jpg_1309293388:Class;
      
      private var _embed_mxml__assets_chat_4_png_1312266026:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SelectServer()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_chat_1_jpg_1309301064 = SelectServer__embed_mxml__assets_chat_1_jpg_1309301064;
         this._embed_mxml__assets_chat_3_jpg_1309293388 = SelectServer__embed_mxml__assets_chat_3_jpg_1309293388;
         this._embed_mxml__assets_chat_4_png_1312266026 = SelectServer__embed_mxml__assets_chat_4_png_1312266026;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._SelectServer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_SelectServerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SelectServer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._SelectServer_VGroup1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SelectServer._watcherSetupUtil = param1;
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
      
      private function _SelectServer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 20;
         _loc1_.mxmlContent = [this._SelectServer_Label1_i(),this._SelectServer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SelectServer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("paddingLeft",40);
         _loc1_.setStyle("paddingRight",40);
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",8274230);
         _loc1_.setStyle("fontSize",13);
         _loc1_.id = "_SelectServer_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectServer_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectServer_Label1",this._SelectServer_Label1);
         return _loc1_;
      }
      
      private function _SelectServer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 20;
         _loc1_.mxmlContent = [this._SelectServer_ServerIcon1_c(),this._SelectServer_ServerIcon2_c(),this._SelectServer_ServerIcon3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SelectServer_ServerIcon1_c() : ServerIcon
      {
         var _loc1_:ServerIcon = new ServerIcon();
         _loc1_.toolTip = "Войти в реалити шоу";
         _loc1_.title = "в видеочат";
         _loc1_.source = this._embed_mxml__assets_chat_1_jpg_1309301064;
         _loc1_.addEventListener("click",this.___SelectServer_ServerIcon1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SelectServer_ServerIcon1_click(param1:MouseEvent) : void
      {
         SH.app.loadGame(App.APP1);
      }
      
      private function _SelectServer_ServerIcon2_c() : ServerIcon
      {
         var _loc1_:ServerIcon = new ServerIcon();
         _loc1_.toolTip = "Войти в реальный город";
         _loc1_.title = "в город";
         _loc1_.source = this._embed_mxml__assets_chat_3_jpg_1309293388;
         _loc1_.addEventListener("click",this.___SelectServer_ServerIcon2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SelectServer_ServerIcon2_click(param1:MouseEvent) : void
      {
         SH.app.loadGame(App.APP2);
      }
      
      private function _SelectServer_ServerIcon3_i() : ServerIcon
      {
         var _loc1_:ServerIcon = new ServerIcon();
         _loc1_.source = this._embed_mxml__assets_chat_4_png_1312266026;
         _loc1_.addEventListener("click",this.___SelectServer_ServerIcon3_click);
         _loc1_.id = "_SelectServer_ServerIcon3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectServer_ServerIcon3 = _loc1_;
         BindingManager.executeBindings(this,"_SelectServer_ServerIcon3",this._SelectServer_ServerIcon3);
         return _loc1_;
      }
      
      public function ___SelectServer_ServerIcon3_click(param1:MouseEvent) : void
      {
         SH.app.loadGame(App.APP3);
      }
      
      private function _SelectServer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,null,null,"_SelectServer_Label1.text","text");
         result[1] = new Binding(this,null,null,"_SelectServer_Label1.visible","text");
         result[2] = new Binding(this,null,null,"_SelectServer_Label1.includeInLayout","text");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","enter_in_roulette");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SelectServer_ServerIcon3.toolTip");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = resourceManager.getString("base","roulette").toLowerCase();
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_SelectServer_ServerIcon3.title");
         return result;
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
   }
}

