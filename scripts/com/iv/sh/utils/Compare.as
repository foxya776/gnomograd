package com.iv.sh.utils
{
   public class Compare
   {
      
      public function Compare()
      {
         super();
      }
      
      public static function and(... rest) : Boolean
      {
         var _loc2_:Boolean = false;
         for each(_loc2_ in rest)
         {
            if(!_loc2_)
            {
               return false;
            }
         }
         return true;
      }
   }
}

