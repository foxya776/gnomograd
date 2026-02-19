package com.iv.sh.ui
{
   import flash.events.Event;
   import flashx.textLayout.formats.LineBreak;
   import mx.core.mx_internal;
   import spark.components.supportClasses.SkinnableTextBase;
   
   use namespace mx_internal;
   
   public class MyTextInput extends SkinnableTextBase
   {
      
      private static const focusExclusions:Array = ["textDisplay"];
      
      private static var _skinParts:Object = {
         "promptDisplay":false,
         "textDisplay":false
      };
      
      public function MyTextInput()
      {
         super();
      }
      
      override public function get suggestedFocusSkinExclusions() : Array
      {
         return focusExclusions;
      }
      
      [Bindable("textChanged")]
      [Bindable("change")]
      override public function set text(param1:String) : void
      {
         super.text = param1;
         dispatchEvent(new Event("textChanged"));
      }
      
      public function get widthInChars() : Number
      {
         return mx_internal::getWidthInChars();
      }
      
      public function set widthInChars(param1:Number) : void
      {
         mx_internal::setWidthInChars(param1);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == textDisplay)
         {
            textDisplay.multiline = false;
            textDisplay.lineBreak = LineBreak.EXPLICIT;
         }
      }
   }
}

