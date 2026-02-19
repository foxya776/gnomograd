package mx.charts.effects
{
   import mx.charts.effects.effectClasses.SeriesEffectInstance;
   import mx.core.mx_internal;
   import mx.effects.IEffectInstance;
   import mx.effects.TweenEffect;
   
   use namespace mx_internal;
   
   public class SeriesEffect extends TweenEffect
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      public var elementOffset:Number = 20;
      
      public var minimumElementDuration:Number = 0;
      
      public var offset:Number = 0;
      
      public var type:String = "show";
      
      public function SeriesEffect(param1:Object)
      {
         super(param1);
         instanceClass = SeriesEffectInstance;
      }
      
      override protected function initInstance(param1:IEffectInstance) : void
      {
         super.initInstance(param1);
         var _loc2_:SeriesEffectInstance = SeriesEffectInstance(param1);
         _loc2_.offset = this.offset;
         _loc2_.elementOffset = this.elementOffset;
         _loc2_.minimumElementDuration = this.minimumElementDuration;
         _loc2_.type = this.type;
      }
   }
}

