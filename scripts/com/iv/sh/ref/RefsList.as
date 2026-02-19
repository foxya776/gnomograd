package com.iv.sh.ref
{
   import com.iv.sh.ui.inputform.InputForm;
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
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   
   use namespace mx_internal;
   
   public class RefsList extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _RefsList_DataGrid1:DataGrid;
      
      private var _1381744095_RefsList_Label1:Label;
      
      private var _1268779777formId:InputForm;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _987494927provider:ArrayList;
      
      private var _911271071allrefs:Array;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RefsList()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._987494927provider = new ArrayList();
         this._911271071allrefs = new Array();
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._RefsList_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_RefsListWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RefsList[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._RefsList_HGroup1_c(),this._RefsList_VGroup1_c()];
         this.currentState = "loading";
         this.addEventListener("addedToStage",this.___RefsList_Group1_addedToStage);
         states = [new State({
            "name":"loading",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_RefsList_Label1",
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
         RefsList._watcherSetupUtil = param1;
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
         SH.app.api.connection.call("getReferals",new Responder(this.onGetReferals));
      }
      
      private function onGetReferals(param1:Array) : *
      {
         var _loc2_:Object = null;
         var _loc3_:Ref = null;
         this.allrefs = new Array();
         for each(_loc2_ in param1)
         {
            _loc3_ = Ref.createFromFMS(_loc2_.ref);
            _loc3_.status = _loc2_.status;
            this.allrefs.push(_loc3_);
         }
         this.filtrById();
         currentState = "normal";
      }
      
      internal function filtrById() : *
      {
         var _loc1_:Array = null;
         var _loc2_:Ref = null;
         if(Boolean(this.formId) && Boolean(this.formId.text))
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.allrefs)
            {
               if(_loc2_.id == this.formId.text || _loc2_.ownerName.indexOf(this.formId.text) != -1)
               {
                  _loc1_.push(_loc2_);
               }
            }
            this.provider.source = _loc1_;
         }
         else
         {
            this.provider.source = this.allrefs;
         }
      }
      
      private function _RefsList_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._RefsList_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RefsList_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.setStyle("fontFamily","_sans");
         _loc1_.setStyle("color",8274230);
         _loc1_.setStyle("fontSize",15);
         _loc1_.id = "_RefsList_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RefsList_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_RefsList_Label1",this._RefsList_Label1);
         return _loc1_;
      }
      
      private function _RefsList_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 12;
         _loc1_.mxmlContent = [this._RefsList_InputForm1_i(),this._RefsList_DataGrid1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RefsList_InputForm1_i() : InputForm
      {
         var _loc1_:InputForm = new InputForm();
         _loc1_.title = "Найти";
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("change",this.__formId_change);
         _loc1_.id = "formId";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.formId = _loc1_;
         BindingManager.executeBindings(this,"formId",this.formId);
         return _loc1_;
      }
      
      public function __formId_change(param1:TextOperationEvent) : void
      {
         this.filtrById();
      }
      
      private function _RefsList_DataGrid1_i() : DataGrid
      {
         var _loc1_:DataGrid = new DataGrid();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.bottom = 0;
         _loc1_.selectable = true;
         _loc1_.columns = [this._RefsList_DataGridColumn1_c(),this._RefsList_DataGridColumn2_c(),this._RefsList_DataGridColumn3_c(),this._RefsList_DataGridColumn4_c()];
         _loc1_.id = "_RefsList_DataGrid1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RefsList_DataGrid1 = _loc1_;
         BindingManager.executeBindings(this,"_RefsList_DataGrid1",this._RefsList_DataGrid1);
         return _loc1_;
      }
      
      private function _RefsList_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 200;
         _loc1_.dataField = "ownerName";
         _loc1_.dataTipField = "id";
         _loc1_.headerText = "Логин";
         _loc1_.itemRenderer = this._RefsList_ClassFactory1_c();
         return _loc1_;
      }
      
      private function _RefsList_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RefNameItem;
         return _loc1_;
      }
      
      private function _RefsList_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.dataField = "money";
         _loc1_.headerText = "Деньги";
         _loc1_.itemRenderer = this._RefsList_ClassFactory2_c();
         return _loc1_;
      }
      
      private function _RefsList_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MoneyItem;
         return _loc1_;
      }
      
      private function _RefsList_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.dataField = "shows";
         _loc1_.headerText = "Просмотры";
         return _loc1_;
      }
      
      private function _RefsList_DataGridColumn4_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 120;
         _loc1_.dataField = "status";
         _loc1_.headerText = "Действия";
         _loc1_.itemRenderer = this._RefsList_ClassFactory3_c();
         return _loc1_;
      }
      
      private function _RefsList_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RefStatusItem;
         return _loc1_;
      }
      
      public function ___RefsList_Group1_addedToStage(param1:Event) : void
      {
         this.hcpopup1_creationCompleteHandler();
      }
      
      private function _RefsList_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_RefsList_DataGrid1.dataProvider","provider");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _RefsList_Label1() : Label
      {
         return this._1381744095_RefsList_Label1;
      }
      
      public function set _RefsList_Label1(param1:Label) : void
      {
         var _loc2_:Object = this._1381744095_RefsList_Label1;
         if(_loc2_ !== param1)
         {
            this._1381744095_RefsList_Label1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_RefsList_Label1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get formId() : InputForm
      {
         return this._1268779777formId;
      }
      
      public function set formId(param1:InputForm) : void
      {
         var _loc2_:Object = this._1268779777formId;
         if(_loc2_ !== param1)
         {
            this._1268779777formId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"formId",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get allrefs() : Array
      {
         return this._911271071allrefs;
      }
      
      public function set allrefs(param1:Array) : void
      {
         var _loc2_:Object = this._911271071allrefs;
         if(_loc2_ !== param1)
         {
            this._911271071allrefs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allrefs",_loc2_,param1));
            }
         }
      }
   }
}

