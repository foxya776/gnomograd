package
{
   import mx.resources.ResourceBundle;
   
   public class ru_RU$layout_properties extends ResourceBundle
   {
      
      public function ru_RU$layout_properties()
      {
         super("ru_RU","layout");
      }
      
      override protected function getContent() : Object
      {
         return {
            "rowNotFound":"ConstraintRow \"{0}\" не найден.",
            "constraintLayoutNotVirtualized":"ConstraintLayout не поддерживает виртуализацию.",
            "basicLayoutNotVirtualized":"BasicLayout не поддерживает виртуализацию.",
            "columnNotFound":"ConstraintColumn \"{0}\" не найден.",
            "percentWidthColumn":"ConstraintLayout не поддерживает столбцы с шириной, указанной в процентах.",
            "invalidIndex":"Недопустимый индекс",
            "percentHeightRow":"ConstraintLayout не поддерживает строки с шириной, указанной в процентах.",
            "invalidBaselineOnRow":"Недействительное базовое значение в строке {0}: \"{1}\". Необходимо использовать Number или шаблон \"maxAscent:x\"."
         };
      }
   }
}

