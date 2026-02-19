package com.iv.sh
{
   import mx.events.FlexEvent;
   import spark.components.Application;
   
   public class MyApplication extends Application
   {
      
      private static var _skinParts:Object = {
         "contentGroup":false,
         "controlBarGroup":false
      };
      
      public function MyApplication()
      {
         super();
         this.startApp();
      }
      
      protected function startApp() : void
      {
      }
      
      override public function initialize() : void
      {
         try
         {
            super.initialize();
         }
         catch(e:Error)
         {
            dispatchEvent(new FlexEvent(FlexEvent.PREINITIALIZE));
            createChildren();
            childrenCreated();
            initializeAccessibility();
            initializationComplete();
         }
      }
   }
}

