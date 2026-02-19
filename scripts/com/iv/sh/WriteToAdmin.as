package com.iv.sh
{
   import com.iv.sh.support.PopUpWriteToAdmin;
   import com.iv.sh.ui.Link;
   import flash.events.MouseEvent;
   import mx.core.IFlexModuleFactory;
   
   public class WriteToAdmin extends Link
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function WriteToAdmin()
      {
         super();
         this.text = "Написать в техподдержку";
         this.addEventListener("click",this.___WriteToAdmin_Link1_click);
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
      
      public function ___WriteToAdmin_Link1_click(param1:MouseEvent) : void
      {
         SH.app.popuper.show(new PopUpWriteToAdmin());
      }
   }
}

