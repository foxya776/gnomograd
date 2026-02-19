package
{
   import mx.resources.ResourceBundle;
   
   public class ru_RU$formatters_properties extends ResourceBundle
   {
      
      public function ru_RU$formatters_properties()
      {
         super("ru_RU","formatters");
      }
      
      override protected function getContent() : Object
      {
         return {
            "zipCodeFormat":"######",
            "useNegativeSignInCurrency":"TRUE",
            "useNegativeSignInNumber":"TRUE",
            "defaultInvalidFormatError":"Недопустимый формат",
            "pm":"После полудня",
            "useThousandsSeparator":"TRUE",
            "am":"До полудня",
            "areaCode":"-1",
            "validPatternChars":"+()#- .",
            "phoneNumberFormat":"(###) ###-####",
            "defaultInvalidValueError":"Недопустимое значение",
            "areaCodeFormat":"(###)",
            "monthNamesShort":"Янв,Фев,Мар,Апр,Май,Июн,Июл,Авг,Сен,Окт,Ноя,Дек",
            "numberFormatterPrecision":"-1",
            "dayNamesShort":"Пнд,Втр,Срд,Чтв,Пят,Суб, Вск",
            "rounding":"none",
            "currencyFormatterPrecision":"-1"
         };
      }
   }
}

