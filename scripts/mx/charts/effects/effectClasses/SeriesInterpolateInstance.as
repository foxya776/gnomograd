package mx.charts.effects.effectClasses
{
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class SeriesInterpolateInstance extends SeriesEffectInstance
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      private var _sourceRenderData:Object;
      
      private var _destRenderData:Object;
      
      private var _len:Number;
      
      private var _customIData:Object;
      
      private var seriesRenderData:Object;
      
      public function SeriesInterpolateInstance(param1:Object)
      {
         super(param1);
      }
      
      override public function play() : void
      {
         if(type == FlexEvent.HIDE)
         {
            end();
            return;
         }
         this._sourceRenderData = targetSeries.getRenderDataForTransition("hide");
         this._destRenderData = targetSeries.getRenderDataForTransition("show");
         this._len = Math.max(this._sourceRenderData.length,this._destRenderData.length);
         if(Boolean(this._sourceRenderData) && Boolean(this._destRenderData))
         {
            this._customIData = targetSeries.beginInterpolation(this._sourceRenderData,this._destRenderData);
         }
         beginTween(this._len);
      }
      
      override public function onTweenUpdate(param1:Object) : void
      {
         super.onTweenUpdate(param1);
         if(Boolean(this._sourceRenderData) && Boolean(this._destRenderData))
         {
            targetSeries.interpolate(interpolationValues,this._customIData);
            targetSeries.invalidateDisplayList();
         }
      }
      
      override public function onTweenEnd(param1:Object) : void
      {
         super.onTweenEnd(param1);
         if(Boolean(this._sourceRenderData) && Boolean(this._destRenderData))
         {
            targetSeries.endInterpolation(this._customIData);
         }
      }
   }
}

