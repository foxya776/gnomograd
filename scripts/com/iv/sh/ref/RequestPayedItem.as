package com.iv.sh.ref
{
   import com.iv.sh.ui.Link;
   import flash.events.MouseEvent;
   import flash.net.Responder;
   import mx.controls.Alert;
   import mx.controls.dataGridClasses.MXDataGridItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.IFlexModuleFactory;
   import spark.components.HGroup;
   
   public class RequestPayedItem extends MXDataGridItemRenderer implements IListItemRenderer
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function RequestPayedItem()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._RequestPayedItem_HGroup1_c()];
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
      
      protected function link1_clickHandler(param1:MouseEvent) : void
      {
         SH.app.api.connection.call("cancelPayedRequest",new Responder(this.onToPayedRequest),RefPayRequest(data).ref.id);
      }
      
      private function onToPayedRequest(param1:int) : void
      {
         if(param1 == 1)
         {
            Alert.show("Вы не админ");
         }
         else
         {
            PayedRequests(parent.parent.parent).provider.removeItem(data);
         }
      }
      
      protected function link2_clickHandler(param1:MouseEvent) : void
      {
         SH.app.api.connection.call("removePayedRequest",new Responder(this.onRemovePayedRequest),RefPayRequest(data).ref.id);
      }
      
      private function onRemovePayedRequest(param1:int) : void
      {
         if(param1 == 1)
         {
            Alert.show("Вы не админ");
         }
         else
         {
            PayedRequests(parent.parent.parent).provider.removeItem(data);
         }
      }
      
      private function _RequestPayedItem_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = 8;
         _loc1_.paddingTop = 5;
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._RequestPayedItem_Link1_c(),this._RequestPayedItem_Link2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RequestPayedItem_Link1_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Отменить";
         _loc1_.addEventListener("click",this.___RequestPayedItem_Link1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___RequestPayedItem_Link1_click(param1:MouseEvent) : void
      {
         this.link1_clickHandler(param1);
      }
      
      private function _RequestPayedItem_Link2_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Удалить";
         _loc1_.setStyle("color",15471384);
         _loc1_.addEventListener("click",this.___RequestPayedItem_Link2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___RequestPayedItem_Link2_click(param1:MouseEvent) : void
      {
         this.link2_clickHandler(param1);
      }
   }
}

