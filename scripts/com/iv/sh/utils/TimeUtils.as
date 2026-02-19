package com.iv.sh.utils
{
   public class TimeUtils
   {
      
      public static var months:Array = ["января","февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"];
      
      public function TimeUtils()
      {
         super();
      }
      
      public static function getFormatTime(param1:Number) : String
      {
         var _loc2_:int = int(param1 / 3600);
         if(_loc2_ > 0)
         {
            return fillZero(String(_loc2_),2) + ":" + fillZero(String(int(param1 % 3600 / 60)),2) + ":" + fillZero(String(int(param1 % 60)),2);
         }
         return fillZero(String(int(param1 % 3600 / 60)),2) + ":" + fillZero(String(int(param1 % 60)),2);
      }
      
      public static function fillZero(param1:String, param2:int) : String
      {
         return ("0000" + param1).substr(4 + param1.length - param2,param2);
      }
      
      public static function getTimeStr(param1:int) : String
      {
         var _loc2_:int = int(param1 / 3600);
         var _loc3_:int = param1 % 3600 / 60;
         var _loc4_:int = param1 % 60;
         if(_loc2_ > 0)
         {
            return _loc2_ + WordUtils.getCorrectWord(_loc2_,[" час "," часа "," часов "]) + _loc3_ + WordUtils.getCorrectWord(_loc3_,[" минуту"," минуты"," минут"]);
         }
         if(_loc3_ > 0)
         {
            return _loc3_ + WordUtils.getCorrectWord(_loc3_,[" минуту "," минуты "," минут "]) + _loc4_ + WordUtils.getCorrectWord(_loc4_,[" секунду"," секунды"," секунд"]);
         }
         return _loc4_ + WordUtils.getCorrectWord(_loc4_,[" секунду"," секунды"," секунд"]);
      }
      
      public static function getDateStr(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         _loc2_.setTime(param1);
         return _loc2_.date + " " + months[_loc2_.month] + " в " + fillZero(String(_loc2_.hours),2) + ":" + fillZero(String(_loc2_.minutes),2);
      }
      
      public static function getFormatDateStr(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         _loc2_.setTime(param1);
         return _loc2_.date + " " + months[_loc2_.month] + " " + _loc2_.fullYear;
      }
   }
}

