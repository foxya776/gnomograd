package mx.charts.chartClasses
{
   import mx.core.IFlexDisplayObject;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class LegendData
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      public var aspectRatio:Number;
      
      public var element:IChartElement;
      
      public var label:String = "";
      
      public var marker:IFlexDisplayObject;
      
      public function LegendData()
      {
         super();
      }
   }
}

