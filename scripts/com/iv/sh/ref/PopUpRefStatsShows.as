package com.iv.sh.ref
{
   import com.iv.sh.StyleName;
   import com.iv.sh.ui.popup.PopUp;
   import com.iv.sh.utils.TimeUtils;
   import com.iv.sh.utils.WordUtils;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.charts.DateTimeAxis;
   import mx.charts.HitData;
   import mx.charts.LineChart;
   import mx.charts.effects.SeriesInterpolate;
   import mx.charts.series.LineSeries;
   import mx.charts.series.items.LineSeriesItem;
   import mx.collections.ArrayList;
   import mx.controls.HSlider;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.SliderEvent;
   import mx.filters.*;
   import mx.graphics.IStroke;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PopUpRefStatsShows extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpRefStatsShows_Label1:Label;
      
      private var _94623710chart:LineChart;
      
      private var _1792197743dateAxis:DateTimeAxis;
      
      private var _559326726interpolateIn:SeriesInterpolate;
      
      private var _3463ls:LineSeries;
      
      private var _3614s1:SolidColorStroke;
      
      private var _3615s2:SolidColorStroke;
      
      private var _3616s3:SolidColorStroke;
      
      private var _113633sc1:SolidColor;
      
      private var _113634sc2:SolidColor;
      
      private var _113635sc3:SolidColor;
      
      private var _899647263slider:HSlider;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _112787ref:Ref;
      
      private var _19158113minMounth:Number = 0;
      
      private var _753320461maxMounth:Number = 1;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpRefStatsShows()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpRefStatsShows_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpRefStatsShowsWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpRefStatsShows[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.title = "Статистика просмотров";
         this.priority = 2;
         this.width = 700;
         this.height = 300;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpRefStatsShows_Array1_c);
         this._PopUpRefStatsShows_SeriesInterpolate1_i();
         this._PopUpRefStatsShows_SolidColorStroke1_i();
         this._PopUpRefStatsShows_SolidColorStroke2_i();
         this._PopUpRefStatsShows_SolidColorStroke3_i();
         this._PopUpRefStatsShows_SolidColor1_i();
         this._PopUpRefStatsShows_SolidColor2_i();
         this._PopUpRefStatsShows_SolidColor3_i();
         this.addEventListener("creationComplete",this.___PopUpRefStatsShows_PopUp1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpRefStatsShows._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected function popup1_creationCompleteHandler(param1:FlexEvent) : void
      {
         SH.app.api.connection.call("getRefStatsShows",new Responder(this.onGetRefStatsShows),this.ref.id);
      }
      
      private function onGetRefStatsShows(param1:Object) : void
      {
         var _loc5_:String = null;
         var _loc6_:Date = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = 0;
         for(_loc5_ in param1)
         {
            _loc6_ = new Date();
            _loc6_.setTime(int(_loc5_) * 86400000);
            if(_loc6_.time < _loc3_)
            {
               _loc3_ = _loc6_.time;
            }
            else if(_loc6_.time > _loc4_)
            {
               _loc4_ = _loc6_.time;
            }
            _loc2_.push({
               "date":_loc6_,
               "shows":param1[_loc5_],
               "time":_loc6_.time
            });
         }
         _loc2_.sortOn("time",Array.NUMERIC);
         this.chart.dataProvider = new ArrayList(_loc2_);
         this.minMounth = _loc2_[Math.max(0,_loc2_.length - 30)].time;
         this.maxMounth = _loc4_;
         this.slider.values = [this.minMounth,this.maxMounth];
      }
      
      protected function hslider1_changeHandler(param1:SliderEvent) : void
      {
         var _loc2_:Date = new Date();
         if(param1.thumbIndex == 0)
         {
            _loc2_.setTime(this.slider.values[0]);
            this.dateAxis.minimum = _loc2_;
         }
         else
         {
            _loc2_.setTime(this.slider.values[1]);
            this.dateAxis.maximum = _loc2_;
         }
      }
      
      private function getTimeString(param1:Number) : String
      {
         return TimeUtils.getFormatDateStr(param1);
      }
      
      private function getTimeStringFromData(param1:HitData) : String
      {
         return TimeUtils.getFormatDateStr(LineSeriesItem(param1.chartItem).xValue.time) + "\r" + WordUtils.getFullCorrectWord(int(LineSeriesItem(param1.chartItem).yValue),["просмотр","просмотра","просмотров"]);
      }
      
      private function _PopUpRefStatsShows_SeriesInterpolate1_i() : SeriesInterpolate
      {
         var _loc1_:SeriesInterpolate = new SeriesInterpolate();
         _loc1_.duration = 1000;
         this.interpolateIn = _loc1_;
         BindingManager.executeBindings(this,"interpolateIn",this.interpolateIn);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 255;
         _loc1_.weight = 2;
         this.s1 = _loc1_;
         BindingManager.executeBindings(this,"s1",this.s1);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColorStroke2_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16711680;
         _loc1_.weight = 2;
         this.s2 = _loc1_;
         BindingManager.executeBindings(this,"s2",this.s2);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColorStroke3_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 32768;
         _loc1_.weight = 2;
         this.s3 = _loc1_;
         BindingManager.executeBindings(this,"s3",this.s3);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 255;
         _loc1_.alpha = 0.3;
         this.sc1 = _loc1_;
         BindingManager.executeBindings(this,"sc1",this.sc1);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16711680;
         _loc1_.alpha = 0.3;
         this.sc2 = _loc1_;
         BindingManager.executeBindings(this,"sc2",this.sc2);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColor3_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 32768;
         _loc1_.alpha = 0.3;
         this.sc3 = _loc1_;
         BindingManager.executeBindings(this,"sc3",this.sc3);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_Array1_c() : Array
      {
         return [this._PopUpRefStatsShows_VGroup1_c()];
      }
      
      private function _PopUpRefStatsShows_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._PopUpRefStatsShows_Group1_c(),this._PopUpRefStatsShows_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._PopUpRefStatsShows_Rect1_c(),this._PopUpRefStatsShows_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.stroke = this._PopUpRefStatsShows_SolidColorStroke4_c();
         _loc1_.fill = this._PopUpRefStatsShows_SolidColor4_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColorStroke4_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16749634;
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16760961;
         _loc1_.alpha = 1;
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 6;
         _loc1_.right = 6;
         _loc1_.top = 6;
         _loc1_.bottom = 6;
         _loc1_.filters = [this._PopUpRefStatsShows_DropShadowFilter1_c()];
         _loc1_.mxmlContent = [this._PopUpRefStatsShows_Rect2_c(),this._PopUpRefStatsShows_LineChart1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.alpha = 0.8;
         _loc1_.inner = true;
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.fill = this._PopUpRefStatsShows_SolidColor5_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16768701;
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_LineChart1_i() : LineChart
      {
         var _loc1_:LineChart = new LineChart();
         _loc1_.left = 6;
         _loc1_.right = 6;
         _loc1_.top = 6;
         _loc1_.bottom = 6;
         _loc1_.showDataTips = true;
         _loc1_.dataTipMode = "multiple";
         _loc1_.horizontalAxis = this._PopUpRefStatsShows_DateTimeAxis1_i();
         _loc1_.series = [this._PopUpRefStatsShows_LineSeries1_i()];
         _loc1_.setStyle("color",8274230);
         _loc1_.setStyle("chromeColor",8274230);
         _loc1_.id = "chart";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.chart = _loc1_;
         BindingManager.executeBindings(this,"chart",this.chart);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_DateTimeAxis1_i() : DateTimeAxis
      {
         var _loc1_:DateTimeAxis = new DateTimeAxis();
         _loc1_.dataUnits = "days";
         this.dateAxis = _loc1_;
         BindingManager.executeBindings(this,"dateAxis",this.dateAxis);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_LineSeries1_i() : LineSeries
      {
         var _loc1_:LineSeries = new LineSeries();
         _loc1_.yField = "shows";
         _loc1_.displayName = "Показы";
         _loc1_.xField = "date";
         _loc1_.setStyle("chromeColor",8274230);
         _loc1_.id = "ls";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ls = _loc1_;
         BindingManager.executeBindings(this,"ls",this.ls);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "bottom";
         _loc1_.mxmlContent = [this._PopUpRefStatsShows_Label1_i(),this._PopUpRefStatsShows_HSlider1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Выбрать период";
         _loc1_.id = "_PopUpRefStatsShows_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRefStatsShows_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRefStatsShows_Label1",this._PopUpRefStatsShows_Label1);
         return _loc1_;
      }
      
      private function _PopUpRefStatsShows_HSlider1_i() : HSlider
      {
         var _loc1_:HSlider = new HSlider();
         _loc1_.percentWidth = 100;
         _loc1_.thumbCount = 2;
         _loc1_.addEventListener("change",this.__slider_change);
         _loc1_.id = "slider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slider = _loc1_;
         BindingManager.executeBindings(this,"slider",this.slider);
         return _loc1_;
      }
      
      public function __slider_change(param1:SliderEvent) : void
      {
         this.hslider1_changeHandler(param1);
      }
      
      public function ___PopUpRefStatsShows_PopUp1_creationComplete(param1:FlexEvent) : void
      {
         this.popup1_creationCompleteHandler(param1);
      }
      
      private function _PopUpRefStatsShows_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Function
         {
            return getTimeStringFromData;
         },null,"chart.dataTipFunction");
         result[1] = new Binding(this,null,function(param1:IStroke):void
         {
            ls.setStyle("stroke",param1);
         },"ls.stroke","s1");
         result[2] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpRefStatsShows_Label1.styleName");
         result[3] = new Binding(this,function():Function
         {
            return getTimeString;
         },null,"slider.dataTipFormatFunction");
         result[4] = new Binding(this,null,null,"slider.minimum","minMounth");
         result[5] = new Binding(this,null,null,"slider.maximum","maxMounth");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get chart() : LineChart
      {
         return this._94623710chart;
      }
      
      public function set chart(param1:LineChart) : void
      {
         var _loc2_:Object = this._94623710chart;
         if(_loc2_ !== param1)
         {
            this._94623710chart = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chart",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dateAxis() : DateTimeAxis
      {
         return this._1792197743dateAxis;
      }
      
      public function set dateAxis(param1:DateTimeAxis) : void
      {
         var _loc2_:Object = this._1792197743dateAxis;
         if(_loc2_ !== param1)
         {
            this._1792197743dateAxis = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dateAxis",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get interpolateIn() : SeriesInterpolate
      {
         return this._559326726interpolateIn;
      }
      
      public function set interpolateIn(param1:SeriesInterpolate) : void
      {
         var _loc2_:Object = this._559326726interpolateIn;
         if(_loc2_ !== param1)
         {
            this._559326726interpolateIn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"interpolateIn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ls() : LineSeries
      {
         return this._3463ls;
      }
      
      public function set ls(param1:LineSeries) : void
      {
         var _loc2_:Object = this._3463ls;
         if(_loc2_ !== param1)
         {
            this._3463ls = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ls",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s1() : SolidColorStroke
      {
         return this._3614s1;
      }
      
      public function set s1(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._3614s1;
         if(_loc2_ !== param1)
         {
            this._3614s1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s2() : SolidColorStroke
      {
         return this._3615s2;
      }
      
      public function set s2(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._3615s2;
         if(_loc2_ !== param1)
         {
            this._3615s2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s3() : SolidColorStroke
      {
         return this._3616s3;
      }
      
      public function set s3(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._3616s3;
         if(_loc2_ !== param1)
         {
            this._3616s3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sc1() : SolidColor
      {
         return this._113633sc1;
      }
      
      public function set sc1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._113633sc1;
         if(_loc2_ !== param1)
         {
            this._113633sc1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sc1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sc2() : SolidColor
      {
         return this._113634sc2;
      }
      
      public function set sc2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._113634sc2;
         if(_loc2_ !== param1)
         {
            this._113634sc2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sc2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sc3() : SolidColor
      {
         return this._113635sc3;
      }
      
      public function set sc3(param1:SolidColor) : void
      {
         var _loc2_:Object = this._113635sc3;
         if(_loc2_ !== param1)
         {
            this._113635sc3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sc3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slider() : HSlider
      {
         return this._899647263slider;
      }
      
      public function set slider(param1:HSlider) : void
      {
         var _loc2_:Object = this._899647263slider;
         if(_loc2_ !== param1)
         {
            this._899647263slider = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slider",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ref() : Ref
      {
         return this._112787ref;
      }
      
      public function set ref(param1:Ref) : void
      {
         var _loc2_:Object = this._112787ref;
         if(_loc2_ !== param1)
         {
            this._112787ref = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ref",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minMounth() : Number
      {
         return this._19158113minMounth;
      }
      
      public function set minMounth(param1:Number) : void
      {
         var _loc2_:Object = this._19158113minMounth;
         if(_loc2_ !== param1)
         {
            this._19158113minMounth = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minMounth",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxMounth() : Number
      {
         return this._753320461maxMounth;
      }
      
      public function set maxMounth(param1:Number) : void
      {
         var _loc2_:Object = this._753320461maxMounth;
         if(_loc2_ !== param1)
         {
            this._753320461maxMounth = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxMounth",_loc2_,param1));
            }
         }
      }
   }
}

