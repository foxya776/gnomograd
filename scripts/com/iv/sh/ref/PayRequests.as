package com.iv.sh.ref
{
   import com.iv.sh.utils.TimeUtils;
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
   import mx.collections.ArrayList;
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   use namespace mx_internal;
   
   public class PayRequests extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _PayRequests_DataGrid1:DataGrid;
      
      private var _469109167_PayRequests_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _987494927provider:ArrayList;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PayRequests()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._987494927provider = new ArrayList();
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PayRequests_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PayRequestsWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PayRequests[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._PayRequests_HGroup1_c(),this._PayRequests_DataGrid1_i()];
         this.currentState = "loading";
         this.addEventListener("addedToStage",this.___PayRequests_Group1_addedToStage);
         states = [new State({
            "name":"loading",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PayRequests_Label1",
               "name":"text",
               "value":"Загружаю..."
            })]
         }),new State({
            "name":"empty",
            "overrides":[]
         }),new State({
            "name":"normal",
            "overrides":[]
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
         PayRequests._watcherSetupUtil = param1;
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
      
      protected function hcpopup1_creationCompleteHandler() : void
      {
         SH.app.api.connection.call("getPayRequests",new Responder(this.onGetPayRequests));
      }
      
      private function onGetPayRequests(param1:Array) : *
      {
         var _loc3_:Object = null;
         var _loc4_:RefPayRequest = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in param1)
         {
            _loc4_ = RefPayRequest.createFromFMS(_loc3_.request);
            _loc4_.ref = Ref.createFromFMS(_loc3_.ref);
            _loc2_.push(_loc4_);
         }
         this.provider.source = _loc2_;
         currentState = "normal";
      }
      
      private function getLabelForTime(param1:RefPayRequest, param2:DataGridColumn) : String
      {
         return TimeUtils.getDateStr(param1.time);
      }
      
      private function _PayRequests_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._PayRequests_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PayRequests_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.setStyle("fontFamily","_sans");
         _loc1_.setStyle("color",8274230);
         _loc1_.setStyle("fontSize",15);
         _loc1_.id = "_PayRequests_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PayRequests_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PayRequests_Label1",this._PayRequests_Label1);
         return _loc1_;
      }
      
      private function _PayRequests_DataGrid1_i() : DataGrid
      {
         var _loc1_:DataGrid = new DataGrid();
         _loc1_.percentWidth = 100;
         _loc1_.top = 12;
         _loc1_.bottom = 0;
         _loc1_.columns = [this._PayRequests_DataGridColumn1_c(),this._PayRequests_DataGridColumn2_c(),this._PayRequests_DataGridColumn3_c(),this._PayRequests_DataGridColumn4_c(),this._PayRequests_DataGridColumn5_c(),this._PayRequests_DataGridColumn6_c()];
         _loc1_.id = "_PayRequests_DataGrid1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PayRequests_DataGrid1 = _loc1_;
         BindingManager.executeBindings(this,"_PayRequests_DataGrid1",this._PayRequests_DataGrid1);
         return _loc1_;
      }
      
      private function _PayRequests_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 150;
         _loc1_.headerText = "Партнёры";
         _loc1_.itemRenderer = this._PayRequests_ClassFactory1_c();
         return _loc1_;
      }
      
      private function _PayRequests_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RequestNameItem;
         return _loc1_;
      }
      
      private function _PayRequests_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 60;
         _loc1_.dataField = "money";
         _loc1_.headerText = "Деньги";
         return _loc1_;
      }
      
      private function _PayRequests_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 120;
         _loc1_.dataField = "num";
         _loc1_.headerText = "Счёт";
         _loc1_.itemRenderer = this._PayRequests_ClassFactory2_c();
         return _loc1_;
      }
      
      private function _PayRequests_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RequestNumItem;
         return _loc1_;
      }
      
      private function _PayRequests_DataGridColumn4_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 80;
         _loc1_.dataField = "ip";
         _loc1_.headerText = "IP адрес";
         return _loc1_;
      }
      
      private function _PayRequests_DataGridColumn5_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 120;
         _loc1_.dataField = "time";
         _loc1_.headerText = "Время отправки";
         _loc1_.labelFunction = this.getLabelForTime;
         return _loc1_;
      }
      
      private function _PayRequests_DataGridColumn6_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Статус";
         _loc1_.itemRenderer = this._PayRequests_ClassFactory3_c();
         return _loc1_;
      }
      
      private function _PayRequests_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RequestPayItem;
         return _loc1_;
      }
      
      public function ___PayRequests_Group1_addedToStage(param1:Event) : void
      {
         this.hcpopup1_creationCompleteHandler();
      }
      
      private function _PayRequests_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_PayRequests_DataGrid1.dataProvider","provider");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PayRequests_Label1() : Label
      {
         return this._469109167_PayRequests_Label1;
      }
      
      public function set _PayRequests_Label1(param1:Label) : void
      {
         var _loc2_:Object = this._469109167_PayRequests_Label1;
         if(_loc2_ !== param1)
         {
            this._469109167_PayRequests_Label1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PayRequests_Label1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get provider() : ArrayList
      {
         return this._987494927provider;
      }
      
      public function set provider(param1:ArrayList) : void
      {
         var _loc2_:Object = this._987494927provider;
         if(_loc2_ !== param1)
         {
            this._987494927provider = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"provider",_loc2_,param1));
            }
         }
      }
   }
}

