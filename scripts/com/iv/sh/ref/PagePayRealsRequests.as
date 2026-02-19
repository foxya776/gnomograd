package com.iv.sh.ref
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
   import mx.collections.ArrayList;
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.Group;
   
   public class PagePayRealsRequests extends Group
   {
      
      private var _3181382grid:DataGrid;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function PagePayRealsRequests()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._PagePayRealsRequests_DataGrid1_i()];
         this.addEventListener("addedToStage",this.___PagePayRealsRequests_Group1_addedToStage);
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
      
      internal function onGetPayRealsRequests(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc2_:Array = new Array();
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            _loc4_["userId"] = _loc3_;
            _loc2_.push(_loc4_);
         }
         _loc2_.sortOn("refId");
         this.grid.dataProvider = new ArrayList(_loc2_);
      }
      
      private function _PagePayRealsRequests_DataGrid1_i() : DataGrid
      {
         var _loc1_:DataGrid = new DataGrid();
         _loc1_.percentWidth = 100;
         _loc1_.top = 12;
         _loc1_.bottom = 0;
         _loc1_.columns = [this._PagePayRealsRequests_DataGridColumn1_c(),this._PagePayRealsRequests_DataGridColumn2_c()];
         _loc1_.id = "grid";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grid = _loc1_;
         BindingManager.executeBindings(this,"grid",this.grid);
         return _loc1_;
      }
      
      private function _PagePayRealsRequests_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 150;
         _loc1_.headerText = "RealId";
         _loc1_.itemRenderer = this._PagePayRealsRequests_ClassFactory1_c();
         return _loc1_;
      }
      
      private function _PagePayRealsRequests_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ItemRealId;
         return _loc1_;
      }
      
      private function _PagePayRealsRequests_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "URL";
         _loc1_.itemRenderer = this._PagePayRealsRequests_ClassFactory2_c();
         return _loc1_;
      }
      
      private function _PagePayRealsRequests_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ItemUrl;
         return _loc1_;
      }
      
      public function ___PagePayRealsRequests_Group1_addedToStage(param1:Event) : void
      {
         SH.app.api.connection.call("getPayRealsRequests",new Responder(this.onGetPayRealsRequests));
      }
      
      [Bindable(event="propertyChange")]
      public function get grid() : DataGrid
      {
         return this._3181382grid;
      }
      
      public function set grid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._3181382grid;
         if(_loc2_ !== param1)
         {
            this._3181382grid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grid",_loc2_,param1));
            }
         }
      }
   }
}

