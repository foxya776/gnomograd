package com.iv.sh.utils
{
   public class WordUtils
   {
      
      public static const nowhite:String = "^‫\t\x0b\f \r  \b\t ᠎             　\n";
      
      public function WordUtils()
      {
         super();
      }
      
      public static function getCorrectWord(param1:int, param2:Array) : String
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         param1 %= 100;
         if(param1 > 5 && param1 < 20)
         {
            _loc3_ = param2[2];
         }
         else
         {
            _loc4_ = int(param1.toString().substr(-1));
            switch(_loc4_)
            {
               case 1:
                  _loc3_ = param2[0];
                  break;
               case 2:
               case 3:
               case 4:
                  _loc3_ = param2[1];
                  break;
               default:
                  _loc3_ = param2[2];
            }
         }
         return _loc3_;
      }
      
      public static function getFullCorrectWord(param1:int, param2:Array) : String
      {
         return param1 + " " + getCorrectWord(param1,param2);
      }
      
      public static function getRubleMoneyStrFull(param1:int) : String
      {
         return param1 + " " + WordUtils.getCorrectWord(param1,["рубль","рубля","рублей"]);
      }
   }
}

