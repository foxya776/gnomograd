package com.iv.sh.support
{
   public class EmailValidator
   {
      
      public function EmailValidator()
      {
         super();
      }
      
      public static function validate(param1:String) : Boolean
      {
         var _loc2_:RegExp = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
   }
}

