package
{
   import mx.resources.ResourceBundle;
   
   public class ru_RU$charts_properties extends ResourceBundle
   {
      
      public function ru_RU$charts_properties()
      {
         super("ru_RU","charts");
      }
      
      override protected function getContent() : Object
      {
         return {
            "low":"Ниже",
            "open":"Открыть",
            "high":"Выше",
            "close":"Закрыть",
            "noAxisSet":"Ось свойства не установлена для данного AxisRenderer"
         };
      }
   }
}

