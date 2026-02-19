package com.iv.sh.ui.popup
{
   import flash.events.MouseEvent;
   import mx.events.PropertyChangeEvent;
   import spark.components.SkinnableContainer;
   
   public class PopUp extends SkinnableContainer
   {
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      private var _110371416title:String;
      
      public var closeBt:PopUpClose = new PopUpClose();
      
      public var hard:Boolean;
      
      public var priority:int = 0;
      
      public function PopUp()
      {
         super();
         setStyle("skinClass",PopUpSkin);
         this.closeBt.right = 0;
         this.closeBt.top = -47;
         this.closeBt.addEventListener(MouseEvent.CLICK,this.onClickClose);
      }
      
      protected function onClickClose(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         addElement(this.closeBt);
      }
      
      override public function set initialized(param1:Boolean) : void
      {
         super.initialized = param1;
      }
      
      public function hide() : void
      {
         PopUper(owner).hide();
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

