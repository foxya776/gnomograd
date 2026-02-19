package
{
   import mx.resources.ResourceBundle;
   
   public class ru_RU$containers_properties extends ResourceBundle
   {
      
      public function ru_RU$containers_properties()
      {
         super("ru_RU","containers");
      }
      
      override protected function getContent() : Object
      {
         return {
            "noColumnsFound":"ConstraintColumns не найдены.",
            "noRowsFound":"ConstraintRows не найдены.",
            "rowNotFound":"ConstraintRow \"{0}\" не найдена.",
            "columnNotFound":"ConstraintColumn \"{0}\" не найден."
         };
      }
   }
}

