package
{
   import mx.resources.ResourceBundle;
   
   public class ru_RU$SharedResources_properties extends ResourceBundle
   {
      
      public function ru_RU$SharedResources_properties()
      {
         super("ru_RU","SharedResources");
      }
      
      override protected function getContent() : Object
      {
         return {
            "dateFormat":"DD.MM.YYYY",
            "dayNames":"Понедельник,Вторник,Среда,Четверг,Пятница,Суббота, Воскресенье",
            "thousandsSeparatorFrom":" ",
            "monthNames":"Январь,Февраль,Март,Апрель,Май,Июнь,Июль,Август,Сентябрь,Октябрь, Ноябрь,Декабрь",
            "decimalSeparatorFrom":",",
            "currencySymbol":" руб.",
            "decimalSeparatorTo":",",
            "thousandsSeparatorTo":" ",
            "monthSymbol":"",
            "alignSymbol":"right"
         };
      }
   }
}

