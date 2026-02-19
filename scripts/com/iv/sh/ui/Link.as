package com.iv.sh.ui
{
   import flash.events.MouseEvent;
   import mx.core.IFlexModuleFactory;
   import spark.components.Label;
   
   public class Link extends Label
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function Link()
      {
         super();
         this.buttonMode = true;
         this.addEventListener("rollOver",this.___Link_Label1_rollOver);
         this.addEventListener("rollOut",this.___Link_Label1_rollOut);
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
      
      public function ___Link_Label1_rollOver(param1:MouseEvent) : void
      {
         setStyle("textDecoration","underline");
      }
      
      public function ___Link_Label1_rollOut(param1:MouseEvent) : void
      {
         setStyle("textDecoration","none");
      }
   }
}

