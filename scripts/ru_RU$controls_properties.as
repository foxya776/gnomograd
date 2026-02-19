package
{
   import mx.resources.ResourceBundle;
   
   public class ru_RU$controls_properties extends ResourceBundle
   {
      
      public function ru_RU$controls_properties()
      {
         super("ru_RU","controls");
      }
      
      override protected function getContent() : Object
      {
         return {
            "undefinedParameter":"Параметр CuePoint не определен.",
            "nullURL":"В VideoPlayer.load передан пустой URL-адрес",
            "incorrectType":"Тип должен быть 0, 1 или 2.",
            "okLabel":"OK",
            "noLabel":"Нет",
            "wrongNumParams":"Числовые параметры должны иметь числовой формат.",
            "wrongDisabled":"Значение \"Отключено\" должно иметь числовой формат.",
            "wrongTime":"Время должно иметь числовой формат.",
            "dayNamesShortest":"В,П,В,С,Ч,П,С",
            "wrongType":"Тип должен иметь числовой формат.",
            "firstDayOfWeek":"1",
            "requiredField":"Обязательное поле",
            "rootNotSMIL":"URL-адрес: \"{0}\" корневой узел не SMIL: \"{1}\".",
            "errorMessages":"Невозможно установить соединение с сервером или найти FLV на сервере., Не найдена соответствующая контрольная точка., Недопустимая контрольная точка., Недействительный поиск., Недействительный contentPath., Недействительный XML., Отсутствует соответствующая скорость передачи; FLV не должно быть по умолчанию., Невозможно удалить VideoPlayer по умолчанию.",
            "unexpectedEnd":"Непредвиденное окончание строки параметра cuePoint.",
            "rootNotFound":"URL-адрес: \"{0}\" корневой узел не найден; если файл – FLV, он должен иметь расширение .flv.",
            "errWrongContainer":"Ошибка: dataProvider \"{0}\" не должен содержать объекты типа flash.display. DisplayObject.",
            "invalidCall":"Невозможно выполнить повторное подключение HTTP.",
            "cancelLabel":"Отмена",
            "errWrongType":"Ошибка: dataProvider \"{0}\" должен быть String, ViewStack, Array, или IList.",
            "badArgs":"Неверные аргументы для выполнения.",
            "missingRoot":"URL-адрес: \"{0}\" корневой узел не найден; если URL-адрес требуется для FLV, он должен иметь расширение .flv и не принимать параметры.",
            "notLoadable":"Невозможно загрузить \"{0}\".",
            "wrongName":"Имя не может быть неопределенным или пустым.",
            "wrongTimeName":"Время должно иметь числовой формат, и/или имя не может быть неопределенным или пустым.",
            "yesLabel":"Да",
            "undefinedArray":"CuePoint.array не определен.",
            "missingProxy":"URL-адрес: \"{0}\" для XML FPAD необходимо указать тег proxy.",
            "unknownInput":"Неизвестный inputType \"{0}\".",
            "missingAttributeSrc":"URL-адрес: \"{0}\" для тега \"{1}\" требуется атрибут src.",
            "yearSymbol":"",
            "wrongIndex":"CuePoint.index должен иметь числовой формат -1 до cuePoint.array.length.",
            "notImplemented":"{0} еще не реализовано.",
            "label":"Загрузка %3%%",
            "wrongFormat":"Непредвиденный формат параметра cuePoint.",
            "tagNotFound":"URL-адрес: \"{0}\" необходимо указать минимум один видео файл в теге ref.",
            "unsupportedMode":"IMEMode \"{0}\" не поддерживается.",
            "cannotDisable":"Невозможно отключить контрольные точки ActionScript.",
            "missingAttributes":"URL-адрес: \"{0}\" для тега \"{1}\" требуется идентификатор атрибутов, ширина и высота. Ширина и высота должны быть больше или равными нулю.",
            "notfpad":"URL-адрес: \"{0}\" корневой узел не FPAD."
         };
      }
   }
}

