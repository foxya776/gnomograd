package
{
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class ServerIcon extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _ServerIcon_Illustration1:Illustration;
      
      public var _ServerIcon_Link1:Link;
      
      public var _ServerIcon_Rect1:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _896505829source:Class;
      
      private var _110371416title:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ServerIcon()
      {
         var bindings:Array;
         var watchers:Array;
         var _ServerIcon_Rect1_factory:DeferredInstanceFromFunction;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._ServerIcon_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ServerIconWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ServerIcon[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.buttonMode = true;
         this.mxmlContent = [this._ServerIcon_VGroup1_c()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___ServerIcon_Group1_rollOver);
         this.addEventListener("rollOut",this.___ServerIcon_Group1_rollOut);
         _ServerIcon_Rect1_factory = new DeferredInstanceFromFunction(this._ServerIcon_Rect1_i);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_ServerIcon_Rect1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ServerIcon._watcherSetupUtil = param1;
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
      
      public function set showed(param1:Boolean) : void
      {
         visible = param1;
         includeInLayout = param1;
      }
      
      private function _ServerIcon_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.fill = this._ServerIcon_SolidColor1_c();
         _loc1_.initialized(this,"_ServerIcon_Rect1");
         this._ServerIcon_Rect1 = _loc1_;
         BindingManager.executeBindings(this,"_ServerIcon_Rect1",this._ServerIcon_Rect1);
         return _loc1_;
      }
      
      private function _ServerIcon_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.1;
         return _loc1_;
      }
      
      private function _ServerIcon_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 6;
         _loc1_.right = 6;
         _loc1_.top = 6;
         _loc1_.bottom = 6;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ServerIcon_Illustration1_i(),this._ServerIcon_Link1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ServerIcon_Illustration1_i() : Illustration
      {
         var _loc1_:Illustration = new Illustration();
         _loc1_.id = "_ServerIcon_Illustration1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ServerIcon_Illustration1 = _loc1_;
         BindingManager.executeBindings(this,"_ServerIcon_Illustration1",this._ServerIcon_Illustration1);
         return _loc1_;
      }
      
      private function _ServerIcon_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.id = "_ServerIcon_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ServerIcon_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_ServerIcon_Link1",this._ServerIcon_Link1);
         return _loc1_;
      }
      
      public function ___ServerIcon_Group1_rollOver(param1:MouseEvent) : void
      {
         currentState = "over";
      }
      
      public function ___ServerIcon_Group1_rollOut(param1:MouseEvent) : void
      {
         currentState = "normal";
      }
      
      private function _ServerIcon_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_ServerIcon_Illustration1.source","source");
         _loc1_[1] = new Binding(this,null,null,"_ServerIcon_Link1.text","title");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get source() : Class
      {
         return this._896505829source;
      }
      
      public function set source(param1:Class) : void
      {
         var _loc2_:Object = this._896505829source;
         if(_loc2_ !== param1)
         {
            this._896505829source = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"source",_loc2_,param1));
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
   }
}

