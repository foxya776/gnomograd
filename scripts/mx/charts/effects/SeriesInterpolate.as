package mx.charts.effects
{
   import mx.charts.effects.effectClasses.SeriesInterpolateInstance;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class SeriesInterpolate extends SeriesEffect
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      public function SeriesInterpolate(param1:Object = null)
      {
         super(param1);
         instanceClass = SeriesInterpolateInstance;
      }
   }
}

