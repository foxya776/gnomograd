package com.iv.sh.ui.inputform
{
   import flash.events.Event;
   
   public class InputFormEvent extends Event
   {
      
      public var text:String;
      
      public function InputFormEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

