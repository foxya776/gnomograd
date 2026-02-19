package com.iv.sh
{
   public class InstCode
   {
      
      public static const list:Array = ["Лучший видео чат для сайта","Видео чат для сайта","Бесплатный видео чат для сайта","Реалити шоу онлайн видеочат","Видео чат для взрослых","Видео чат","Видеочат"];
      
      public function InstCode()
      {
         super();
      }
      
      public static function getText(param1:String, param2:Boolean, param3:Boolean, param4:String, param5:Boolean) : String
      {
         var _loc7_:String = null;
         var _loc6_:String = "_definst_";
         if(param2)
         {
            _loc6_ = param1;
         }
         if(param5)
         {
            _loc7_ = "r=" + param1 + "&" + App.APP1 + "=" + _loc6_ + "&" + App.APP2 + "=" + _loc6_ + "&" + App.APP3 + "=" + _loc6_;
         }
         else
         {
            _loc7_ = "r=" + param1 + "&" + param4 + "=" + _loc6_;
         }
         if(param3)
         {
            _loc7_ += "&uid=USER_ID&key=MD5(USER_ID + SECRET_KEY)";
         }
         return "<object width=\'100%\' height=\'820px\'><param name=\'allowScriptAccess\' value=\'always\' /><param name=\'movie\' value=\'http://mrtigra.ru/l.swf?" + _loc7_ + "\' /><embed src=\'http://mrtigra.ru/l.swf?" + _loc7_ + "\' allowScriptAccess=\'always\' type=\'application/x-shockwave-flash\' width=\'100%\' height=\'820px\' /></object>";
      }
      
      public static function getPromoText() : String
      {
         return list[Math.round(Math.random() * (list.length - 1))];
      }
   }
}

