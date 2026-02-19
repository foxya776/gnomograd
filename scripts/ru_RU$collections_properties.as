package
{
   import mx.resources.ResourceBundle;
   
   public class ru_RU$collections_properties extends ResourceBundle
   {
      
      public function ru_RU$collections_properties()
      {
         super("ru_RU","collections");
      }
      
      override protected function getContent() : Object
      {
         return {
            "findCondition":"Критерии поиска должны содержать все поля сортировки, ведущие к \"{0}\".",
            "noComparatorSortField":"Невозможно определить устройство сравнения для SortField с именем \"{0}\".",
            "outOfBounds":"Указанный индекс \"{0}\" превышает заданные пределы.",
            "nonUnique":"Неуникальные значения в элементах.",
            "incorrectAddition":"Попытка добавить уже находящийся в представлении элемент.",
            "findRestriction":"Критерии поиска должны содержать минимум одно значение поля сортировки.",
            "invalidType":"Некорректный тип. Необходим тип XML или XMLList, содержащий один объект XML. ",
            "unknownMode":"Неизвестный режим поиска.",
            "invalidIndex":"Недействительный индекс \"{0}\".",
            "invalidRemove":"Удаление невозможно, если текущее значение – beforeFirst или afterLast.",
            "unknownProperty":"Неизвестное свойство: \"{0}\".",
            "invalidInsert":"Вставка невозможна, если текущее значение – beforeFirst.",
            "itemNotFound":"Поиск невозможен, если в представлении не выполнена сортировка.",
            "bookmarkInvalid":"Закладка больше недействительна.",
            "noComparator":"Невозможно определить устройство сравнения для \"{0}\".",
            "invalidCursor":"Курсор больше недействителен.",
            "noItems":"Отсутствуют искомые элементы.",
            "bookmarkNotFound":"Закладка не из данного представления."
         };
      }
   }
}

