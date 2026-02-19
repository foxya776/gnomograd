package spark.components
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SoftKeyboardEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import mx.core.EventPriority;
   import mx.core.FlexGlobals;
   import mx.core.IInvalidating;
   import mx.core.IVisualElement;
   import mx.core.IVisualElementContainer;
   import mx.core.InteractionMode;
   import mx.core.LayoutDirection;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.FlexMouseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.TouchInteractionEvent;
   import mx.managers.IFocusManagerComponent;
   import mx.styles.IStyleClient;
   import spark.components.supportClasses.GroupBase;
   import spark.components.supportClasses.ScrollerLayout;
   import spark.components.supportClasses.SkinnableComponent;
   import spark.core.IGraphicElement;
   import spark.core.IViewport;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.Keyframe;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.effects.easing.IEaser;
   import spark.effects.easing.Power;
   import spark.effects.easing.Sine;
   import spark.events.CaretBoundsChangeEvent;
   import spark.layouts.supportClasses.LayoutBase;
   import spark.utils.MouseEventUtil;
   
   use namespace mx_internal;
   
   public class Scroller extends SkinnableComponent implements IFocusManagerComponent, IVisualElementContainer
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      private static const THROW_OVERSHOOT_TIME:int = 200;
      
      private static const THROW_SETTLE_TIME:int = 600;
      
      private static const THROW_CURVE_EXPONENT:Number = 3;
      
      private static const OVERSHOOT_CURVE_EXPONENT:Number = 2;
      
      private static const PULL_TENSION_RATIO:Number = 0.5;
      
      private static const ZERO_POINT:Point = new Point(0,0);
      
      mx_internal static var effectiveScreenDPI:Number = 0;
      
      mx_internal static var dragEventThinning:Boolean = true;
      
      private static const TEXT_SELECTION_AUTO_SCROLL_FPS:int = 10;
      
      private static var _skinParts:Object = {
         "horizontalScrollBar":false,
         "verticalScrollBar":false
      };
      
      mx_internal var horizontalScrollInProgress:Boolean = false;
      
      mx_internal var verticalScrollInProgress:Boolean = false;
      
      mx_internal var minSlopInches:Number = 0.079365;
      
      mx_internal var throwEffectDecelFactor:Number = 0.998;
      
      private var touchScrollHelper:TouchScrollHelper;
      
      private var hspBeforeTouchScroll:Number;
      
      private var vspBeforeTouchScroll:Number;
      
      private var throwEffect:Animate;
      
      private var throwFinalVSP:Number;
      
      private var throwFinalHSP:Number;
      
      private var throwReachedMaximumScrollPosition:Boolean;
      
      private var stoppedPreemptively:Boolean = false;
      
      private var scrollingVertically:Boolean;
      
      private var scrollingHorizontally:Boolean;
      
      private var captureNextClick:Boolean = false;
      
      private var captureNextMouseDown:Boolean = false;
      
      private var hideScrollBarAnimation:Animate;
      
      private var hideScrollBarAnimationPrematurelyStopped:Boolean;
      
      private var inTouchInteraction:Boolean = false;
      
      mx_internal var ensureElementIsVisibleForSoftKeyboard:Boolean = true;
      
      private var lastFocusedElement:IVisualElement;
      
      private var aspectRatio:String;
      
      private var oldSoftKeyboardHeight:Number = NaN;
      
      private var oldSoftKeyboardWidth:Number = NaN;
      
      mx_internal var preventThrows:Boolean = false;
      
      private var lastFocusedElementCaretBounds:Rectangle;
      
      private var captureNextCaretBoundsChange:Boolean = false;
      
      private var _42694078horizontalScrollBar:HScrollBar;
      
      private var _1618627376verticalScrollBar:VScrollBar;
      
      private var _viewport:IViewport;
      
      private var _minViewportInset:Number = 0;
      
      private var _measuredSizeIncludesScrollBars:Boolean = true;
      
      mx_internal var textSelectionAutoScrollEnabled:Boolean = false;
      
      private var textSelectionAutoScrollTimer:Timer;
      
      private var minTextSelectionVScrollPos:int = 0;
      
      private var maxTextSelectionVScrollPos:int = -1;
      
      private var minTextSelectionHScrollPos:int = 0;
      
      private var maxTextSelectionHScrollPos:int = -1;
      
      public function Scroller()
      {
         super();
         hasFocusableChildren = true;
         focusEnabled = false;
         if(mx_internal::effectiveScreenDPI == 0)
         {
            mx_internal::effectiveScreenDPI = Capabilities.screenDPI;
            if(mx_internal::effectiveScreenDPI == 0 && "runtimeDPI" in FlexGlobals.topLevelApplication)
            {
               mx_internal::effectiveScreenDPI = FlexGlobals.topLevelApplication.runtimeDPI as Number;
            }
         }
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler);
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStageHandler);
      }
      
      [Bindable(event="viewportChanged")]
      public function get viewport() : IViewport
      {
         return this._viewport;
      }
      
      public function set viewport(param1:IViewport) : void
      {
         if(param1 == this._viewport)
         {
            return;
         }
         this.uninstallViewport();
         this._viewport = param1;
         this.installViewport();
         dispatchEvent(new Event("viewportChanged"));
      }
      
      private function installViewport() : void
      {
         if(Boolean(skin) && Boolean(this.viewport))
         {
            this.viewport.clipAndEnableScrolling = true;
            Group(skin).addElementAt(this.viewport,0);
            this.viewport.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.viewport_propertyChangeHandler);
         }
         if(this.verticalScrollBar)
         {
            this.verticalScrollBar.viewport = this.viewport;
         }
         if(this.horizontalScrollBar)
         {
            this.horizontalScrollBar.viewport = this.viewport;
         }
      }
      
      private function uninstallViewport() : void
      {
         if(this.horizontalScrollBar)
         {
            this.horizontalScrollBar.viewport = null;
         }
         if(this.verticalScrollBar)
         {
            this.verticalScrollBar.viewport = null;
         }
         if(Boolean(skin) && Boolean(this.viewport))
         {
            this.viewport.clipAndEnableScrolling = false;
            Group(skin).removeElement(this.viewport);
            this.viewport.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.viewport_propertyChangeHandler);
         }
      }
      
      public function get minViewportInset() : Number
      {
         return this._minViewportInset;
      }
      
      public function set minViewportInset(param1:Number) : void
      {
         if(param1 == this._minViewportInset)
         {
            return;
         }
         this._minViewportInset = param1;
         this.invalidateSkin();
      }
      
      public function get measuredSizeIncludesScrollBars() : Boolean
      {
         return this._measuredSizeIncludesScrollBars;
      }
      
      public function set measuredSizeIncludesScrollBars(param1:Boolean) : void
      {
         if(param1 == this._measuredSizeIncludesScrollBars)
         {
            return;
         }
         this._measuredSizeIncludesScrollBars = param1;
         this.invalidateSkin();
      }
      
      public function ensureElementIsVisible(param1:IVisualElement) : void
      {
         this.ensureElementPositionIsVisible(param1);
      }
      
      private function ensureElementPositionIsVisible(param1:IVisualElement, param2:Rectangle = null, param3:Boolean = true, param4:Boolean = true) : void
      {
         var _loc7_:Point = null;
         var _loc8_:Rectangle = null;
         var _loc9_:Number = NaN;
         var _loc5_:DisplayObject = param1 as DisplayObject;
         if(param1 is IGraphicElement)
         {
            _loc5_ = IGraphicElement(param1).parent as DisplayObject;
         }
         if(!_loc5_ || !contains(_loc5_))
         {
            return;
         }
         var _loc6_:LayoutBase = null;
         if(this.viewport is GroupBase)
         {
            _loc6_ = GroupBase(this.viewport).layout;
         }
         else if(this.viewport is SkinnableContainer)
         {
            _loc6_ = SkinnableContainer(this.viewport).layout;
         }
         if(_loc6_)
         {
            if(Boolean(this.throwEffect) && this.throwEffect.isPlaying)
            {
               this.throwEffect.stop();
               this.snapContentScrollPosition();
            }
            _loc7_ = _loc6_.mx_internal::getScrollPositionDeltaToAnyElement(param1,param2,param3);
            if(_loc7_)
            {
               this.viewport.horizontalScrollPosition += _loc7_.x;
               this.viewport.verticalScrollPosition += _loc7_.y;
               if(!param2)
               {
                  _loc8_ = _loc6_.mx_internal::getChildElementBounds(param1);
                  _loc9_ = 0;
                  if(param1 is IStyleClient)
                  {
                     _loc9_ = IStyleClient(param1).getStyle("focusThickness");
                  }
                  if(_loc9_)
                  {
                     if(this.viewport.verticalScrollPosition > _loc8_.top - _loc9_)
                     {
                        this.viewport.verticalScrollPosition = _loc8_.top - _loc9_;
                     }
                     else if(this.viewport.verticalScrollPosition + height < _loc8_.bottom + _loc9_)
                     {
                        this.viewport.verticalScrollPosition = _loc8_.bottom + _loc9_ - height;
                     }
                     if(this.viewport.horizontalScrollPosition > _loc8_.left - _loc9_)
                     {
                        this.viewport.horizontalScrollPosition = _loc8_.left - _loc9_;
                     }
                     else if(this.viewport.horizontalScrollPosition + width < _loc8_.right + _loc9_)
                     {
                        this.viewport.horizontalScrollPosition = _loc8_.right + _loc9_ - width;
                     }
                  }
               }
               if(param4 && this.viewport is UIComponent)
               {
                  UIComponent(this.viewport).validateNow();
               }
            }
         }
      }
      
      private function getMotionPathCurrentVelocity(param1:MotionPath, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param2 / param3;
         var _loc5_:Number = 0.00001;
         var _loc6_:Number = Number(param1.getValue(_loc4_));
         var _loc7_:Number = Number(param1.getValue(_loc4_ + _loc5_ / param3));
         return (_loc7_ - _loc6_) / _loc5_;
      }
      
      private function checkScrollPosition() : void
      {
         var _loc2_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc1_:Boolean = this.aspectRatio != FlexGlobals.topLevelApplication.aspectRatio;
         this.aspectRatio = FlexGlobals.topLevelApplication.aspectRatio;
         var _loc3_:Number = this.viewport.contentHeight > this.viewport.height ? this.viewport.contentHeight - this.viewport.height : 0;
         var _loc4_:Number = this.viewport.contentWidth > this.viewport.width ? this.viewport.contentWidth - this.viewport.width : 0;
         var _loc5_:Boolean = this.throwReachedMaximumScrollPosition && (this.throwFinalVSP < _loc3_ || this.throwFinalHSP < _loc4_);
         var _loc6_:Boolean = this.throwFinalVSP > _loc3_ || this.throwFinalHSP > _loc4_;
         if(Boolean(this.throwEffect) && Boolean(this.throwEffect.isPlaying) && (_loc5_ || _loc6_))
         {
            if(_loc1_)
            {
               this.throwEffect.stop();
               if(this.viewport.verticalScrollPosition > _loc3_)
               {
                  this.viewport.verticalScrollPosition = _loc3_;
               }
               if(this.viewport.horizontalScrollPosition > _loc4_)
               {
                  this.viewport.horizontalScrollPosition = _loc4_;
               }
            }
            else
            {
               _loc7_ = 0;
               _loc8_ = 0;
               _loc9_ = this.throwEffect.playheadTime;
               if(isNaN(_loc9_))
               {
                  _loc9_ = 0;
               }
               _loc10_ = this.throwEffect.duration;
               _loc11_ = 0;
               while(_loc11_ < this.throwEffect.motionPaths.length)
               {
                  _loc12_ = this.getMotionPathCurrentVelocity(this.throwEffect.motionPaths[_loc11_],_loc9_,_loc10_);
                  if(this.throwEffect.motionPaths[_loc11_].property == "horizontalScrollPosition")
                  {
                     _loc7_ = _loc12_;
                  }
                  else
                  {
                     _loc8_ = _loc12_;
                  }
                  _loc11_++;
               }
               this.stoppedPreemptively = true;
               this.throwEffect.stop();
               this.mx_internal::performThrow(-_loc7_,-_loc8_);
            }
         }
         else if(!this.inTouchInteraction)
         {
            if(this.viewport.verticalScrollPosition > _loc3_)
            {
               this.viewport.verticalScrollPosition = _loc3_;
            }
            if(this.viewport.horizontalScrollPosition > _loc4_)
            {
               this.viewport.horizontalScrollPosition = _loc4_;
            }
         }
      }
      
      private function checkScrollPositionsOnUpdateComplete(param1:FlexEvent) : void
      {
         this.viewport.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.checkScrollPositionsOnUpdateComplete);
         this.checkScrollPosition();
      }
      
      private function viewport_propertyChangeHandler(param1:PropertyChangeEvent) : void
      {
         switch(param1.property)
         {
            case "contentWidth":
            case "contentHeight":
               this.invalidateSkin();
               if(getStyle("interactionMode") == InteractionMode.TOUCH)
               {
                  this.viewport.addEventListener(FlexEvent.UPDATE_COMPLETE,this.checkScrollPositionsOnUpdateComplete);
               }
         }
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         var _loc2_:IVisualElement = null;
         super.focusInHandler(param1);
         if(Boolean(this.viewport) && this.mx_internal::ensureElementIsVisibleForSoftKeyboard)
         {
            _loc2_ = focusManager.getFocus() as IVisualElement;
            this.lastFocusedElement = _loc2_;
         }
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         super.focusOutHandler(param1);
         this.lastFocusedElement = null;
      }
      
      private function orientationChangeHandler(param1:Event) : void
      {
         if(getStyle("interactionMode") == InteractionMode.TOUCH)
         {
            this.checkScrollPosition();
         }
      }
      
      public function get numElements() : int
      {
         return this.viewport ? 1 : 0;
      }
      
      public function getElementAt(param1:int) : IVisualElement
      {
         if(Boolean(this.viewport) && param1 == 0)
         {
            return this.viewport;
         }
         throw new RangeError(resourceManager.getString("components","indexOutOfRange",[param1]));
      }
      
      public function getElementIndex(param1:IVisualElement) : int
      {
         if(param1 != null && param1 == this.viewport)
         {
            return 0;
         }
         throw ArgumentError(resourceManager.getString("components","elementNotFoundInScroller",[param1]));
      }
      
      public function addElement(param1:IVisualElement) : IVisualElement
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      public function addElementAt(param1:IVisualElement, param2:int) : IVisualElement
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      public function removeElement(param1:IVisualElement) : IVisualElement
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      public function removeElementAt(param1:int) : IVisualElement
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      public function removeAllElements() : void
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      public function setElementIndex(param1:IVisualElement, param2:int) : void
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      public function swapElements(param1:IVisualElement, param2:IVisualElement) : void
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      public function swapElementsAt(param1:int, param2:int) : void
      {
         throw new ArgumentError(resourceManager.getString("components","operationNotSupported"));
      }
      
      private function invalidateSkin() : void
      {
         if(skin)
         {
            skin.invalidateSize();
            skin.invalidateDisplayList();
         }
      }
      
      mx_internal function get scrollerLayout() : ScrollerLayout
      {
         if(skin)
         {
            return Group(skin).layout as ScrollerLayout;
         }
         return null;
      }
      
      private function installTouchListeners() : void
      {
         addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDownHandler);
         addEventListener(TouchInteractionEvent.TOUCH_INTERACTION_STARTING,this.touchInteractionStartingHandler);
         addEventListener(TouchInteractionEvent.TOUCH_INTERACTION_START,this.touchInteractionStartHandler);
         addEventListener(TouchInteractionEvent.TOUCH_INTERACTION_END,this.touchInteractionEndHandler);
         addEventListener(MouseEvent.CLICK,this.touchScrolling_captureMouseHandler,true);
         addEventListener(MouseEvent.MOUSE_DOWN,this.touchScrolling_captureMouseHandler,true);
      }
      
      private function uninstallTouchListeners() : void
      {
         removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDownHandler);
         removeEventListener(TouchInteractionEvent.TOUCH_INTERACTION_STARTING,this.touchInteractionStartingHandler);
         removeEventListener(TouchInteractionEvent.TOUCH_INTERACTION_START,this.touchInteractionStartHandler);
         removeEventListener(TouchInteractionEvent.TOUCH_INTERACTION_END,this.touchInteractionEndHandler);
         removeEventListener(MouseEvent.CLICK,this.touchScrolling_captureMouseHandler,true);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.touchScrolling_captureMouseHandler,true);
      }
      
      private function calculateThrowEffectTime(param1:Number, param2:Number) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.mx_internal::scrollerLayout)
         {
            _loc3_ = param1 == 0 ? 0 : int(Math.log(0.01 / Math.abs(param1)) / Math.log(this.mx_internal::throwEffectDecelFactor));
            _loc4_ = param2 == 0 ? 0 : int(Math.log(0.01 / Math.abs(param2)) / Math.log(this.mx_internal::throwEffectDecelFactor));
            if(this.mx_internal::scrollerLayout.mx_internal::canScrollHorizontally && this.mx_internal::scrollerLayout.mx_internal::canScrollVertically)
            {
               return Math.max(_loc3_,_loc4_);
            }
            if(this.mx_internal::scrollerLayout.mx_internal::canScrollHorizontally)
            {
               return _loc3_;
            }
            if(this.mx_internal::scrollerLayout.mx_internal::canScrollVertically)
            {
               return _loc4_;
            }
         }
         return 0;
      }
      
      private function addKeyframe(param1:SimpleMotionPath, param2:Number, param3:Number, param4:IEaser) : Number
      {
         var _loc5_:Keyframe = new Keyframe(param2,param3);
         _loc5_.easer = param4;
         param1.keyframes.push(_loc5_);
         return param2;
      }
      
      private function createThrowMotionPath(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : SimpleMotionPath
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc7_:SimpleMotionPath = new SimpleMotionPath(param1);
         _loc7_.keyframes = Vector.<Keyframe>([new Keyframe(0,param3)]);
         var _loc8_:Keyframe = null;
         var _loc9_:Number = 0;
         if(param2 == 0)
         {
            if(!(param3 < param4 || param3 > param5))
            {
               return null;
            }
            param3 = param3 < param4 ? param4 : param5;
            _loc9_ = this.addKeyframe(_loc7_,_loc9_ + THROW_SETTLE_TIME,param3,new Power(0,THROW_CURVE_EXPONENT));
         }
         while(param2 != 0)
         {
            if(param3 < param4 && param2 > 0 || param3 > param5 && param2 < 0)
            {
               _loc10_ = param3 < param4 ? param4 : param5;
               _loc11_ = Math.round(param3 - param2 / OVERSHOOT_CURVE_EXPONENT * THROW_OVERSHOOT_TIME);
               _loc9_ = this.addKeyframe(_loc7_,_loc9_ + THROW_OVERSHOOT_TIME,_loc11_,new Power(0,OVERSHOOT_CURVE_EXPONENT));
               _loc9_ = this.addKeyframe(_loc7_,_loc9_ + THROW_SETTLE_TIME,_loc10_,new Sine(0.25));
               param2 = 0;
               param3 = _loc10_;
            }
            else
            {
               _loc12_ = param6;
               if(param3 < param4 || param3 > param5)
               {
                  _loc13_ = (param3 - (param3 < param4 ? param4 : param5)) / THROW_SETTLE_TIME * THROW_CURVE_EXPONENT;
                  if(Math.abs(param2) < Math.abs(_loc13_))
                  {
                     param2 = _loc13_;
                     _loc12_ = THROW_SETTLE_TIME;
                  }
               }
               _loc14_ = Math.round(param3 - param2 / THROW_CURVE_EXPONENT * _loc12_);
               if(_loc14_ < param4 || _loc14_ > param5)
               {
                  _loc15_ = _loc14_ < param4 ? param4 : param5;
                  _loc16_ = _loc12_ * (1 - Math.pow(1 - (_loc15_ - param3) / (_loc14_ - param3),1 / THROW_CURVE_EXPONENT));
                  _loc9_ = this.addKeyframe(_loc7_,_loc9_ + _loc16_,_loc15_,new PartialExponentialCurve(THROW_CURVE_EXPONENT,_loc16_ / _loc12_));
                  if(_loc14_ < param4)
                  {
                     param3 = param4 - 1;
                  }
                  if(_loc14_ > param5)
                  {
                     param3 = param5 + 1;
                  }
                  _loc17_ = _loc16_ / _loc12_;
                  _loc18_ = 3 * Math.pow(_loc17_,2) - 6 * _loc17_ + 3;
                  param2 = -_loc18_ * (_loc14_ - param3) / _loc12_;
               }
               else
               {
                  _loc19_ = 0.62;
                  _loc9_ = this.addKeyframe(_loc7_,_loc9_ + _loc12_ * _loc19_,_loc14_,new PartialExponentialCurve(THROW_CURVE_EXPONENT,_loc19_));
                  param2 = 0;
               }
            }
         }
         return _loc7_;
      }
      
      private function setUpThrowEffect(param1:Number, param2:Number) : Boolean
      {
         var _loc6_:int = 0;
         var _loc8_:IEaser = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:SimpleMotionPath = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:SimpleMotionPath = null;
         if(!this.throwEffect)
         {
            this.throwEffect = new Animate();
            this.throwEffect.addEventListener(EffectEvent.EFFECT_END,this.throwEffect_effectEndHandler);
            this.throwEffect.target = this.viewport;
            _loc8_ = new Power(0,THROW_CURVE_EXPONENT);
            this.throwEffect.easer = _loc8_;
         }
         var _loc3_:int = this.calculateThrowEffectTime(param1,param2);
         this.throwEffect.duration = _loc3_;
         var _loc4_:Vector.<MotionPath> = new Vector.<MotionPath>();
         this.throwReachedMaximumScrollPosition = false;
         this.scrollingHorizontally = false;
         var _loc5_:Number = 0;
         this.throwFinalHSP = 0;
         if(Boolean(this.mx_internal::scrollerLayout) && this.mx_internal::scrollerLayout.mx_internal::canScrollHorizontally)
         {
            _loc9_ = this.viewport.horizontalScrollPosition;
            _loc10_ = isNaN(this.viewport.width) ? 0 : Number(this.viewport.width);
            _loc11_ = this.viewport.contentWidth;
            _loc12_ = Math.max(0,_loc11_ == 0 ? this.viewport.horizontalScrollPosition : _loc11_ - _loc10_);
            _loc13_ = this.createThrowMotionPath("horizontalScrollPosition",param1,_loc9_,0,_loc12_,_loc3_);
            if(_loc13_)
            {
               _loc4_.push(_loc13_);
               _loc5_ = _loc13_.keyframes[_loc13_.keyframes.length - 1].time;
               this.throwFinalHSP = Number(_loc13_.keyframes[_loc13_.keyframes.length - 1].value);
               if(this.throwFinalHSP == _loc12_)
               {
                  this.throwReachedMaximumScrollPosition = true;
               }
               this.scrollingHorizontally = true;
            }
         }
         this.scrollingVertically = false;
         var _loc7_:Number = 0;
         this.throwFinalVSP = 0;
         if(Boolean(this.mx_internal::scrollerLayout) && this.mx_internal::scrollerLayout.mx_internal::canScrollVertically)
         {
            _loc14_ = this.viewport.verticalScrollPosition;
            _loc15_ = isNaN(this.viewport.height) ? 0 : Number(this.viewport.height);
            _loc16_ = this.viewport.contentHeight;
            _loc17_ = Math.max(0,_loc16_ == 0 ? this.viewport.verticalScrollPosition : _loc16_ - _loc15_);
            _loc18_ = this.createThrowMotionPath("verticalScrollPosition",param2,_loc14_,0,_loc17_,_loc3_);
            if(_loc18_)
            {
               _loc4_.push(_loc18_);
               _loc7_ = _loc18_.keyframes[_loc18_.keyframes.length - 1].time;
               this.throwFinalVSP = Number(_loc18_.keyframes[_loc18_.keyframes.length - 1].value);
               if(this.throwFinalVSP == _loc17_)
               {
                  this.throwReachedMaximumScrollPosition = true;
               }
               this.scrollingVertically = true;
            }
         }
         if(_loc4_.length == 0)
         {
            this.touchScrollHelper.endTouchScroll();
            return false;
         }
         this.throwEffect.duration = Math.max(_loc5_,_loc7_);
         this.throwEffect.motionPaths = _loc4_;
         return true;
      }
      
      private function hideScrollBars() : void
      {
         var _loc2_:Vector.<MotionPath> = null;
         if(!this.hideScrollBarAnimation)
         {
            this.hideScrollBarAnimation = new Animate();
            this.hideScrollBarAnimation.addEventListener(EffectEvent.EFFECT_END,this.hideScrollBarAnimation_effectEndHandler);
            this.hideScrollBarAnimation.duration = 500;
            _loc2_ = Vector.<MotionPath>([new SimpleMotionPath("alpha",1,0)]);
            this.hideScrollBarAnimation.motionPaths = _loc2_;
         }
         var _loc1_:Array = [];
         if(Boolean(this.horizontalScrollBar) && this.horizontalScrollBar.visible)
         {
            _loc1_.push(this.horizontalScrollBar);
         }
         if(Boolean(this.verticalScrollBar) && this.verticalScrollBar.visible)
         {
            _loc1_.push(this.verticalScrollBar);
         }
         this.hideScrollBarAnimationPrematurelyStopped = false;
         this.hideScrollBarAnimation.play(_loc1_);
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         var _loc1_:Application = FlexGlobals.topLevelApplication as Application;
         if(Boolean(_loc1_) && Boolean(_loc1_.resizeForSoftKeyboard) && Application.mx_internal::softKeyboardBehavior == "none")
         {
            addEventListener(SoftKeyboardEvent.SOFT_KEYBOARD_ACTIVATE,this.softKeyboardActivateHandler,false,EventPriority.DEFAULT,true);
            addEventListener(SoftKeyboardEvent.SOFT_KEYBOARD_ACTIVATE,this.softKeyboardActivateCaptureHandler,true,EventPriority.DEFAULT,true);
            addEventListener(SoftKeyboardEvent.SOFT_KEYBOARD_DEACTIVATE,this.softKeyboardDeactivateHandler,false,EventPriority.DEFAULT,true);
            addEventListener(CaretBoundsChangeEvent.CARET_BOUNDS_CHANGE,this.caretBoundsChangeHandler);
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc3_:* = undefined;
         super.styleChanged(param1);
         var _loc2_:Boolean = param1 == null || param1 == "styleName";
         if(_loc2_ || param1 == "horizontalScrollPolicy" || param1 == "verticalScrollPolicy")
         {
            this.invalidateSkin();
         }
         if(_loc2_ || param1 == "interactionMode")
         {
            if(getStyle("interactionMode") == InteractionMode.TOUCH)
            {
               this.installTouchListeners();
               if(!this.touchScrollHelper)
               {
                  this.touchScrollHelper = new TouchScrollHelper(this);
                  this.touchScrollHelper.scrollSlop = Math.round(this.mx_internal::minSlopInches * mx_internal::effectiveScreenDPI);
               }
            }
            else
            {
               this.uninstallTouchListeners();
            }
         }
         if(_loc2_ || param1 == "liveScrolling")
         {
            _loc3_ = getStyle("liveScrolling");
            if(_loc3_ === true || _loc3_ === false)
            {
               if(this.verticalScrollBar)
               {
                  this.verticalScrollBar.setStyle("liveDragging",Boolean(_loc3_));
               }
               if(this.horizontalScrollBar)
               {
                  this.horizontalScrollBar.setStyle("liveDragging",Boolean(_loc3_));
               }
            }
         }
      }
      
      override protected function attachSkin() : void
      {
         super.attachSkin();
         Group(skin).layout = new ScrollerLayout();
         this.installViewport();
         skin.addEventListener(MouseEvent.MOUSE_WHEEL,this.skin_mouseWheelHandler);
      }
      
      override protected function detachSkin() : void
      {
         this.uninstallViewport();
         Group(skin).layout = null;
         skin.removeEventListener(MouseEvent.MOUSE_WHEEL,this.skin_mouseWheelHandler);
         super.detachSkin();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _loc3_:* = undefined;
         super.partAdded(param1,param2);
         _loc3_ = getStyle("liveScrolling");
         var _loc4_:Boolean = _loc3_ === true || _loc3_ === false;
         if(param2 == this.verticalScrollBar)
         {
            this.verticalScrollBar.viewport = this.viewport;
            if(_loc4_)
            {
               this.verticalScrollBar.setStyle("liveDragging",Boolean(_loc3_));
            }
         }
         else if(param2 == this.horizontalScrollBar)
         {
            this.horizontalScrollBar.viewport = this.viewport;
            if(_loc4_)
            {
               this.horizontalScrollBar.setStyle("liveDragging",Boolean(_loc3_));
            }
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         super.partRemoved(param1,param2);
         if(param2 == this.verticalScrollBar)
         {
            this.verticalScrollBar.viewport = null;
         }
         else if(param2 == this.horizontalScrollBar)
         {
            this.horizontalScrollBar.viewport = null;
         }
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.keyDownHandler(param1);
         var _loc2_:IViewport = this.viewport;
         if(!_loc2_ || param1.isDefaultPrevented())
         {
            return;
         }
         if(getFocus() is TextField)
         {
            return;
         }
         if(Boolean(this.verticalScrollBar) && this.verticalScrollBar.visible)
         {
            _loc3_ = NaN;
            switch(param1.keyCode)
            {
               case Keyboard.UP:
                  _loc3_ = _loc2_.getVerticalScrollPositionDelta(NavigationUnit.UP);
                  break;
               case Keyboard.DOWN:
                  _loc3_ = _loc2_.getVerticalScrollPositionDelta(NavigationUnit.DOWN);
                  break;
               case Keyboard.PAGE_UP:
                  _loc3_ = _loc2_.getVerticalScrollPositionDelta(NavigationUnit.PAGE_UP);
                  break;
               case Keyboard.PAGE_DOWN:
                  _loc3_ = _loc2_.getVerticalScrollPositionDelta(NavigationUnit.PAGE_DOWN);
                  break;
               case Keyboard.HOME:
                  _loc3_ = _loc2_.getVerticalScrollPositionDelta(NavigationUnit.HOME);
                  break;
               case Keyboard.END:
                  _loc3_ = _loc2_.getVerticalScrollPositionDelta(NavigationUnit.END);
            }
            if(!isNaN(_loc3_))
            {
               _loc2_.verticalScrollPosition += _loc3_;
               param1.preventDefault();
            }
         }
         if(Boolean(this.horizontalScrollBar) && this.horizontalScrollBar.visible)
         {
            _loc4_ = NaN;
            switch(param1.keyCode)
            {
               case Keyboard.LEFT:
                  _loc4_ = layoutDirection == LayoutDirection.LTR ? _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.LEFT) : _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.RIGHT);
                  break;
               case Keyboard.RIGHT:
                  _loc4_ = layoutDirection == LayoutDirection.LTR ? _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.RIGHT) : _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.LEFT);
                  break;
               case Keyboard.HOME:
                  _loc4_ = _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.HOME);
                  break;
               case Keyboard.END:
                  _loc4_ = _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.END);
                  break;
               case Keyboard.PAGE_UP:
                  if(!this.verticalScrollBar || !this.verticalScrollBar.visible)
                  {
                     _loc4_ = LayoutDirection.LTR ? _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.LEFT) : _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.RIGHT);
                  }
                  break;
               case Keyboard.PAGE_DOWN:
                  if(!this.verticalScrollBar || !this.verticalScrollBar.visible)
                  {
                     _loc4_ = LayoutDirection.LTR ? _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.RIGHT) : _loc2_.getHorizontalScrollPositionDelta(NavigationUnit.LEFT);
                  }
            }
            if(!isNaN(_loc4_))
            {
               _loc2_.horizontalScrollPosition += _loc4_;
               param1.preventDefault();
            }
         }
      }
      
      private function skin_mouseWheelHandler(param1:MouseEvent) : void
      {
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc2_:IViewport = this.viewport;
         if(param1.isDefaultPrevented() || !_loc2_ || !_loc2_.visible)
         {
            return;
         }
         var _loc3_:FlexMouseEvent = MouseEventUtil.createMouseWheelChangingEvent(param1);
         if(!dispatchEvent(_loc3_))
         {
            param1.preventDefault();
            return;
         }
         var _loc4_:int = _loc3_.delta;
         var _loc5_:uint = Math.abs(param1.delta);
         if(Boolean(this.verticalScrollBar) && this.verticalScrollBar.visible)
         {
            _loc6_ = _loc4_ < 0 ? NavigationUnit.DOWN : NavigationUnit.UP;
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               _loc8_ = _loc2_.getVerticalScrollPositionDelta(_loc6_);
               if(!isNaN(_loc8_))
               {
                  _loc2_.verticalScrollPosition += _loc8_;
                  if(_loc2_ is IInvalidating)
                  {
                     IInvalidating(_loc2_).validateNow();
                  }
               }
               _loc7_++;
            }
            param1.preventDefault();
         }
         else if(Boolean(this.horizontalScrollBar) && this.horizontalScrollBar.visible)
         {
            _loc6_ = _loc4_ < 0 ? NavigationUnit.RIGHT : NavigationUnit.LEFT;
            _loc9_ = 0;
            while(_loc9_ < _loc5_)
            {
               _loc10_ = _loc2_.getHorizontalScrollPositionDelta(_loc6_);
               if(!isNaN(_loc10_))
               {
                  _loc2_.horizontalScrollPosition += _loc10_;
                  if(_loc2_ is IInvalidating)
                  {
                     IInvalidating(_loc2_).validateNow();
                  }
               }
               _loc9_++;
            }
            param1.preventDefault();
         }
      }
      
      private function touchInteractionStartingHandler(param1:TouchInteractionEvent) : void
      {
         if(param1.relatedObject != this && (this.mx_internal::horizontalScrollInProgress || this.mx_internal::verticalScrollInProgress))
         {
            param1.preventDefault();
         }
      }
      
      private function touchInteractionStartHandler(param1:TouchInteractionEvent) : void
      {
         if(param1.relatedObject != this)
         {
            this.touchScrollHelper.stopScrollWatch();
         }
         else
         {
            this.captureNextClick = true;
            this.captureNextMouseDown = true;
            this.mx_internal::preventThrows = false;
            this.hspBeforeTouchScroll = this.viewport.horizontalScrollPosition;
            this.vspBeforeTouchScroll = this.viewport.verticalScrollPosition;
            if(Boolean(this.mx_internal::scrollerLayout) && this.mx_internal::scrollerLayout.mx_internal::canScrollHorizontally)
            {
               this.mx_internal::horizontalScrollInProgress = true;
            }
            if(Boolean(this.mx_internal::scrollerLayout) && this.mx_internal::scrollerLayout.mx_internal::canScrollVertically)
            {
               this.mx_internal::verticalScrollInProgress = true;
            }
            skin.invalidateDisplayList();
            if(Boolean(this.hideScrollBarAnimation) && this.hideScrollBarAnimation.isPlaying)
            {
               this.hideScrollBarAnimationPrematurelyStopped = true;
               this.hideScrollBarAnimation.stop();
            }
            if(this.horizontalScrollBar)
            {
               this.horizontalScrollBar.alpha = this.viewport.contentWidth > this.viewport.width ? 1 : 0;
            }
            if(this.verticalScrollBar)
            {
               this.verticalScrollBar.alpha = this.viewport.contentHeight > this.viewport.height ? 1 : 0;
            }
            this.inTouchInteraction = true;
         }
      }
      
      private function snapContentScrollPosition() : void
      {
         var _loc1_:Number = this.viewport.contentWidth > this.viewport.width ? this.viewport.contentWidth - this.viewport.width : 0;
         this.viewport.horizontalScrollPosition = Math.min(Math.max(0,this.viewport.horizontalScrollPosition),_loc1_);
         var _loc2_:Number = this.viewport.contentHeight > this.viewport.height ? this.viewport.contentHeight - this.viewport.height : 0;
         this.viewport.verticalScrollPosition = Math.min(Math.max(0,this.viewport.verticalScrollPosition),_loc2_);
      }
      
      private function stopThrowEffectOnMouseDown() : void
      {
         if(Boolean(this.throwEffect) && this.throwEffect.isPlaying)
         {
            this.stoppedPreemptively = true;
            this.throwEffect.stop();
            this.snapContentScrollPosition();
            this.hspBeforeTouchScroll = this.viewport.horizontalScrollPosition;
            this.vspBeforeTouchScroll = this.viewport.verticalScrollPosition;
         }
      }
      
      private function touchScrolling_captureMouseHandler(param1:MouseEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         switch(param1.type)
         {
            case MouseEvent.MOUSE_DOWN:
               _loc2_ = 0.01984;
               _loc3_ = Math.round(_loc2_ * mx_internal::effectiveScreenDPI);
               _loc3_ = globalToLocal(new Point(_loc3_,0)).subtract(globalToLocal(ZERO_POINT)).x;
               if(this.captureNextMouseDown && (Math.abs(this.viewport.verticalScrollPosition - this.throwFinalVSP) > _loc3_ || Math.abs(this.viewport.horizontalScrollPosition - this.throwFinalHSP) > _loc3_))
               {
                  this.stopThrowEffectOnMouseDown();
                  this.touchScrollHelper.startScrollWatch(param1);
                  param1.stopImmediatePropagation();
                  break;
               }
               if(Boolean(this.throwEffect) && this.throwEffect.isPlaying)
               {
                  this.throwEffect.stop();
                  this.snapContentScrollPosition();
               }
               break;
            case MouseEvent.CLICK:
               if(!this.captureNextClick)
               {
                  return;
               }
               param1.stopImmediatePropagation();
         }
      }
      
      private function mouseDownHandler(param1:MouseEvent) : void
      {
         this.stopThrowEffectOnMouseDown();
         this.captureNextClick = false;
         this.touchScrollHelper.startScrollWatch(param1);
      }
      
      mx_internal function performDrag(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = globalToLocal(new Point(param1,param2)).subtract(globalToLocal(ZERO_POINT));
         param1 = _loc3_.x;
         param2 = _loc3_.y;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(Boolean(this.mx_internal::scrollerLayout) && this.mx_internal::scrollerLayout.mx_internal::canScrollHorizontally)
         {
            _loc4_ = param1;
         }
         if(Boolean(this.mx_internal::scrollerLayout) && this.mx_internal::scrollerLayout.mx_internal::canScrollVertically)
         {
            _loc5_ = param2;
         }
         var _loc6_:Number = this.hspBeforeTouchScroll - _loc4_;
         var _loc7_:Number = this.vspBeforeTouchScroll - _loc5_;
         var _loc8_:Number = this.viewport.horizontalScrollPosition;
         var _loc9_:Number = isNaN(this.viewport.width) ? 0 : Number(this.viewport.width);
         var _loc10_:Number = this.viewport.contentWidth;
         var _loc11_:Number = Math.max(0,_loc10_ == 0 ? this.viewport.horizontalScrollPosition : _loc10_ - _loc9_);
         if(_loc6_ < 0)
         {
            _loc6_ = Math.round(_loc6_ * PULL_TENSION_RATIO);
         }
         if(_loc6_ > _loc11_)
         {
            _loc6_ = Math.round(_loc11_ + (_loc6_ - _loc11_) * PULL_TENSION_RATIO);
         }
         var _loc12_:Number = this.viewport.verticalScrollPosition;
         var _loc13_:Number = isNaN(this.viewport.height) ? 0 : Number(this.viewport.height);
         var _loc14_:Number = this.viewport.contentHeight;
         var _loc15_:Number = Math.max(0,_loc14_ == 0 ? this.viewport.verticalScrollPosition : _loc14_ - _loc13_);
         if(_loc7_ < 0)
         {
            _loc7_ = Math.round(_loc7_ * PULL_TENSION_RATIO);
         }
         if(_loc7_ > _loc15_)
         {
            _loc7_ = Math.round(_loc15_ + (_loc7_ - _loc15_) * PULL_TENSION_RATIO);
         }
         _loc6_ = Math.min(Math.max(_loc6_,-_loc9_),_loc11_ + _loc9_);
         _loc7_ = Math.min(Math.max(_loc7_,-_loc13_),_loc15_ + _loc13_);
         this.viewport.horizontalScrollPosition = _loc6_;
         this.viewport.verticalScrollPosition = _loc7_;
      }
      
      private function throwEffect_effectEndHandler(param1:EffectEvent) : void
      {
         if(this.stoppedPreemptively)
         {
            return;
         }
         this.touchScrollHelper.endTouchScroll();
      }
      
      mx_internal function performThrow(param1:Number, param2:Number) : void
      {
         this.stoppedPreemptively = false;
         if(this.setUpThrowEffect(param1,param2))
         {
            this.throwEffect.play();
         }
      }
      
      private function touchInteractionEndHandler(param1:TouchInteractionEvent) : void
      {
         if(param1.relatedObject == this)
         {
            this.captureNextMouseDown = false;
            this.hideScrollBars();
            this.inTouchInteraction = false;
         }
      }
      
      private function hideScrollBarAnimation_effectEndHandler(param1:EffectEvent) : void
      {
         if(this.hideScrollBarAnimationPrematurelyStopped)
         {
            return;
         }
         this.mx_internal::horizontalScrollInProgress = false;
         this.mx_internal::verticalScrollInProgress = false;
         skin.invalidateDisplayList();
      }
      
      mx_internal function enableTextSelectionAutoScroll(param1:Boolean, param2:int = 0, param3:int = -1, param4:int = 0, param5:int = -1) : void
      {
         if(getStyle("interactionMode") == InteractionMode.TOUCH)
         {
            this.mx_internal::textSelectionAutoScrollEnabled = param1;
            this.minTextSelectionHScrollPos = param2;
            this.maxTextSelectionHScrollPos = param3;
            this.minTextSelectionVScrollPos = param4;
            this.maxTextSelectionVScrollPos = param5;
         }
      }
      
      mx_internal function setUpTextSelectionAutoScroll() : void
      {
         if(!this.textSelectionAutoScrollTimer)
         {
            this.textSelectionAutoScrollTimer = new Timer(1000 / TEXT_SELECTION_AUTO_SCROLL_FPS);
            this.textSelectionAutoScrollTimer.addEventListener(TimerEvent.TIMER,this.textSelectionAutoScrollTimerHandler);
            this.textSelectionAutoScrollTimer.start();
         }
      }
      
      mx_internal function stopTextSelectionAutoScroll() : void
      {
         if(this.textSelectionAutoScrollTimer)
         {
            this.textSelectionAutoScrollTimer.stop();
            this.textSelectionAutoScrollTimer.removeEventListener(TimerEvent.TIMER,this.textSelectionAutoScrollTimerHandler);
            this.textSelectionAutoScrollTimer = null;
         }
      }
      
      private function textSelectionAutoScrollTimerHandler(param1:TimerEvent) : void
      {
         var _loc2_:int = 12;
         var _loc3_:int = 20;
         var _loc4_:int = 3;
         var _loc5_:int = 30;
         var _loc6_:Number = this.viewport.verticalScrollPosition;
         var _loc7_:Number = this.viewport.horizontalScrollPosition;
         if(this.mx_internal::scrollerLayout.mx_internal::canScrollHorizontally)
         {
            if(mouseX > width - _loc2_)
            {
               _loc7_ += _loc3_;
               if(mouseX > width - _loc4_)
               {
                  _loc7_ += _loc5_;
               }
               if(this.maxTextSelectionHScrollPos != -1 && _loc7_ > this.maxTextSelectionHScrollPos)
               {
                  _loc7_ = this.maxTextSelectionHScrollPos;
               }
            }
            if(mouseX < _loc2_)
            {
               _loc7_ -= _loc3_;
               if(mouseX < _loc4_)
               {
                  _loc7_ -= _loc5_;
               }
               if(_loc7_ < this.minTextSelectionHScrollPos)
               {
                  _loc7_ = this.minTextSelectionHScrollPos;
               }
            }
         }
         if(this.mx_internal::scrollerLayout.mx_internal::canScrollVertically)
         {
            if(mouseY > height - _loc2_)
            {
               _loc6_ += _loc3_;
               if(mouseY > height - _loc4_)
               {
                  _loc6_ += _loc5_;
               }
               if(this.maxTextSelectionVScrollPos != -1 && _loc6_ > this.maxTextSelectionVScrollPos)
               {
                  _loc6_ = this.maxTextSelectionVScrollPos;
               }
            }
            if(mouseY < _loc2_)
            {
               _loc6_ -= _loc3_;
               if(mouseY < _loc4_)
               {
                  _loc6_ -= _loc5_;
               }
               if(_loc6_ < this.minTextSelectionVScrollPos)
               {
                  _loc6_ = this.minTextSelectionVScrollPos;
               }
            }
         }
         if(_loc7_ != this.viewport.horizontalScrollPosition)
         {
            this.viewport.horizontalScrollPosition = _loc7_;
         }
         if(_loc6_ != this.viewport.verticalScrollPosition)
         {
            this.viewport.verticalScrollPosition = _loc6_;
         }
      }
      
      private function addedToStageHandler(param1:Event) : void
      {
         if(getStyle("interactionMode") == InteractionMode.TOUCH)
         {
            systemManager.stage.addEventListener("orientationChange",this.orientationChangeHandler);
         }
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         if(getStyle("interactionMode") == InteractionMode.TOUCH)
         {
            systemManager.stage.removeEventListener("orientationChange",this.orientationChangeHandler);
         }
      }
      
      private function softKeyboardActivateHandler(param1:SoftKeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         this.mx_internal::preventThrows = true;
         var _loc2_:Rectangle = stage.softKeyboardRect;
         if(_loc2_.width > 0 && _loc2_.height > 0)
         {
            if(Boolean(this.lastFocusedElement) && Boolean(this.mx_internal::ensureElementIsVisibleForSoftKeyboard) && (_loc2_.height != this.oldSoftKeyboardHeight || _loc2_.width != this.oldSoftKeyboardWidth))
            {
               if(this.lastFocusedElementCaretBounds == null)
               {
                  this.ensureElementIsVisible(this.lastFocusedElement);
               }
               else
               {
                  _loc3_ = this.oldSoftKeyboardHeight > 0 || this.oldSoftKeyboardWidth > 0;
                  this.ensureElementPositionIsVisible(this.lastFocusedElement,this.lastFocusedElementCaretBounds,!_loc3_);
                  this.lastFocusedElementCaretBounds = null;
               }
            }
            this.oldSoftKeyboardHeight = _loc2_.height;
            this.oldSoftKeyboardWidth = _loc2_.width;
         }
      }
      
      private function softKeyboardActivateCaptureHandler(param1:SoftKeyboardEvent) : void
      {
         var _loc2_:Rectangle = stage.softKeyboardRect;
         if(_loc2_.width > 0 && _loc2_.height > 0)
         {
            this.captureNextCaretBoundsChange = true;
         }
      }
      
      private function softKeyboardDeactivateHandler(param1:SoftKeyboardEvent) : void
      {
         this.mx_internal::adjustScrollPositionAfterSoftKeyboardDeactivate();
         this.oldSoftKeyboardHeight = NaN;
         this.oldSoftKeyboardWidth = NaN;
         this.mx_internal::preventThrows = false;
      }
      
      mx_internal function adjustScrollPositionAfterSoftKeyboardDeactivate() : void
      {
         if(Boolean(this.throwEffect) && this.throwEffect.isPlaying)
         {
            this.throwEffect.stop();
         }
         this.snapContentScrollPosition();
      }
      
      private function caretBoundsChangeHandler(param1:CaretBoundsChangeEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         param1.preventDefault();
         if(this.captureNextCaretBoundsChange)
         {
            this.lastFocusedElementCaretBounds = param1.newCaretBounds;
            this.captureNextCaretBoundsChange = false;
            return;
         }
         this.ensureElementPositionIsVisible(this.lastFocusedElement,param1.newCaretBounds,false,false);
      }
      
      [Bindable(event="propertyChange")]
      [SkinPart(required="false")]
      public function get horizontalScrollBar() : HScrollBar
      {
         return this._42694078horizontalScrollBar;
      }
      
      public function set horizontalScrollBar(param1:HScrollBar) : void
      {
         var _loc2_:Object = this._42694078horizontalScrollBar;
         if(_loc2_ !== param1)
         {
            this._42694078horizontalScrollBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horizontalScrollBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      [SkinPart(required="false")]
      public function get verticalScrollBar() : VScrollBar
      {
         return this._1618627376verticalScrollBar;
      }
      
      public function set verticalScrollBar(param1:VScrollBar) : void
      {
         var _loc2_:Object = this._1618627376verticalScrollBar;
         if(_loc2_ !== param1)
         {
            this._1618627376verticalScrollBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verticalScrollBar",_loc2_,param1));
            }
         }
      }
   }
}

import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.events.TouchEvent;
import flash.geom.Point;
import flash.system.Capabilities;
import flash.utils.Timer;
import mx.core.mx_internal;
import mx.events.SandboxMouseEvent;
import mx.events.TouchInteractionEvent;
import mx.events.TouchInteractionReason;
import mx.utils.GetTimerUtil;
import spark.effects.easing.EaseInOutBase;

use namespace mx_internal;

class TouchScrollHelper
{
   
   private static const EVENT_HISTORY_LENGTH:int = 5;
   
   private static const MIN_START_VELOCITY_IPS:Number = 0.8;
   
   private static const MAX_THROW_VELOCITY_IPS:Number = 10;
   
   private static const MAX_DRAG_RATE:Number = 30;
   
   private static const VELOCITY_WEIGHTS:Vector.<Number> = Vector.<Number>([1,1.33,1.66,2]);
   
   public var scrollSlop:Number;
   
   public var scroller:Scroller;
   
   private var mouseDownedPoint:Point;
   
   private var mouseDownedDisplayObject:DisplayObject;
   
   private var scrollGestureAnchorPoint:Point;
   
   private var mostRecentDragDeltaX:Number;
   
   private var mostRecentDragDeltaY:Number;
   
   private var mostRecentDragTime:Number;
   
   private var dragTimer:Timer = null;
   
   private var dragScrollPending:Boolean = false;
   
   private var startTime:Number;
   
   private var mouseEventCoordinatesHistory:Vector.<Point>;
   
   private var mouseEventLength:Number = 0;
   
   private var mouseEventTimeHistory:Vector.<int>;
   
   private var isScrolling:Boolean;
   
   private var isIOS:Boolean = false;
   
   public function TouchScrollHelper(param1:Scroller)
   {
      super();
      this.isIOS = Capabilities.version.indexOf("IOS") == 0;
      this.mouseEventCoordinatesHistory = new Vector.<Point>(EVENT_HISTORY_LENGTH);
      this.mouseEventTimeHistory = new Vector.<int>(EVENT_HISTORY_LENGTH);
      this.scroller = param1;
   }
   
   public function startScrollWatch(param1:Event) : void
   {
      var _loc2_:MouseEvent = null;
      this.startTime = GetTimerUtil.mx_internal::getTimer();
      if(param1 is MouseEvent && param1.type == MouseEvent.MOUSE_DOWN)
      {
         _loc2_ = param1 as MouseEvent;
         if(!this.isScrolling)
         {
            this.mouseDownedDisplayObject = _loc2_.target as DisplayObject;
            this.mouseDownedPoint = new Point(_loc2_.stageX,_loc2_.stageY);
         }
         this.installMouseListeners();
         if(this.isScrolling)
         {
            this.scrollGestureAnchorPoint = new Point(_loc2_.stageX,_loc2_.stageY);
            this.mouseDownedPoint = new Point(_loc2_.stageX,_loc2_.stageY);
         }
         this.mouseEventLength = 0;
         this.addMouseEventHistory(_loc2_.stageX,_loc2_.stageY,GetTimerUtil.mx_internal::getTimer());
      }
      else if(param1 is TouchEvent && param1.type == TouchEvent.TOUCH_BEGIN)
      {
      }
   }
   
   public function stopScrollWatch() : void
   {
      this.uninstallMouseListeners();
   }
   
   private function addMouseEventHistory(param1:Number, param2:Number, param3:Number) : Point
   {
      var _loc6_:Point = null;
      var _loc4_:Number = param1 - this.mouseDownedPoint.x;
      var _loc5_:Number = param2 - this.mouseDownedPoint.y;
      var _loc7_:int = this.mouseEventLength % EVENT_HISTORY_LENGTH;
      if(this.mouseEventCoordinatesHistory[_loc7_])
      {
         _loc6_ = this.mouseEventCoordinatesHistory[_loc7_];
         _loc6_.x = _loc4_;
         _loc6_.y = _loc5_;
      }
      else
      {
         _loc6_ = new Point(_loc4_,_loc5_);
         this.mouseEventCoordinatesHistory[_loc7_] = _loc6_;
      }
      this.mouseEventTimeHistory[_loc7_] = this.isIOS ? int(param3 - this.startTime) : int(GetTimerUtil.mx_internal::getTimer() - this.startTime);
      ++this.mouseEventLength;
      return _loc6_;
   }
   
   private function installMouseListeners() : void
   {
      var _loc1_:DisplayObject = this.scroller.systemManager.getSandboxRoot();
      _loc1_.addEventListener(MouseEvent.MOUSE_MOVE,this.sbRoot_mouseMoveHandler,true);
      _loc1_.addEventListener(MouseEvent.MOUSE_UP,this.sbRoot_mouseUpHandler,true);
      _loc1_.addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.sbRoot_mouseUpHandler);
      this.scroller.systemManager.deployMouseShields(true);
   }
   
   private function uninstallMouseListeners() : void
   {
      var _loc1_:DisplayObject = this.scroller.systemManager.getSandboxRoot();
      _loc1_.removeEventListener(MouseEvent.MOUSE_MOVE,this.sbRoot_mouseMoveHandler,true);
      _loc1_.removeEventListener(MouseEvent.MOUSE_UP,this.sbRoot_mouseUpHandler,true);
      _loc1_.removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.sbRoot_mouseUpHandler);
      this.scroller.systemManager.deployMouseShields(false);
   }
   
   private function sbRoot_mouseMoveHandler(param1:MouseEvent) : void
   {
      var _loc3_:Boolean = false;
      var _loc4_:Boolean = false;
      var _loc5_:Boolean = false;
      var _loc6_:TouchInteractionEvent = null;
      var _loc7_:Boolean = false;
      var _loc8_:TouchInteractionEvent = null;
      var _loc9_:Number = NaN;
      var _loc10_:int = 0;
      var _loc11_:int = 0;
      var _loc12_:Point = null;
      var _loc13_:Number = NaN;
      var _loc14_:Number = NaN;
      var _loc15_:Number = NaN;
      var _loc2_:Point = new Point(param1.stageX - this.mouseDownedPoint.x,param1.stageY - this.mouseDownedPoint.y);
      if(!this.isScrolling)
      {
         _loc3_ = false;
         _loc4_ = false;
         _loc5_ = false;
         if(Boolean(this.scroller.mx_internal::scrollerLayout) && Boolean(this.scroller.mx_internal::scrollerLayout.mx_internal::canScrollHorizontally))
         {
            _loc4_ = true;
         }
         if(Boolean(this.scroller.mx_internal::scrollerLayout) && Boolean(this.scroller.mx_internal::scrollerLayout.mx_internal::canScrollVertically))
         {
            _loc5_ = true;
         }
         if(_loc4_ && Math.abs(_loc2_.x) >= this.scrollSlop)
         {
            _loc3_ = true;
         }
         if(_loc5_ && Math.abs(_loc2_.y) >= this.scrollSlop)
         {
            _loc3_ = true;
         }
         if(_loc3_)
         {
            _loc6_ = new TouchInteractionEvent(TouchInteractionEvent.TOUCH_INTERACTION_STARTING,true,true);
            _loc6_.relatedObject = this.scroller;
            _loc6_.reason = TouchInteractionReason.SCROLL;
            _loc7_ = Boolean(this.dispatchBubblingEventOnMouseDownedDisplayObject(_loc6_));
            if(!_loc7_)
            {
               param1.updateAfterEvent();
               this.stopScrollWatch();
               return;
            }
            _loc8_ = new TouchInteractionEvent(TouchInteractionEvent.TOUCH_INTERACTION_START,true,true);
            _loc8_.relatedObject = this.scroller;
            _loc8_.reason = TouchInteractionReason.SCROLL;
            this.dispatchBubblingEventOnMouseDownedDisplayObject(_loc8_);
            this.isScrolling = true;
            if(_loc4_ && _loc5_)
            {
               _loc9_ = Math.max(Math.abs(_loc2_.x),Math.abs(_loc2_.y));
               if(_loc9_ >= this.scrollSlop)
               {
                  _loc12_ = _loc2_.clone();
                  _loc13_ = this.scrollSlop / _loc9_ * _loc2_.length;
                  _loc12_.normalize(_loc13_);
                  _loc10_ = Math.round(_loc12_.x);
                  _loc11_ = Math.round(_loc12_.y);
                  this.scrollGestureAnchorPoint = new Point(this.mouseDownedPoint.x + _loc10_,this.mouseDownedPoint.y + _loc11_);
               }
            }
            else if(_loc4_)
            {
               if(_loc2_.x >= this.scrollSlop)
               {
                  this.scrollGestureAnchorPoint = new Point(this.mouseDownedPoint.x + this.scrollSlop,this.mouseDownedPoint.y);
               }
               else
               {
                  this.scrollGestureAnchorPoint = new Point(this.mouseDownedPoint.x - this.scrollSlop,this.mouseDownedPoint.y);
               }
            }
            else if(_loc5_)
            {
               if(_loc2_.y >= this.scrollSlop)
               {
                  this.scrollGestureAnchorPoint = new Point(this.mouseDownedPoint.x,this.mouseDownedPoint.y + this.scrollSlop);
               }
               else
               {
                  this.scrollGestureAnchorPoint = new Point(this.mouseDownedPoint.x,this.mouseDownedPoint.y - this.scrollSlop);
               }
            }
         }
      }
      if(this.isScrolling)
      {
         if(this.scroller.mx_internal::textSelectionAutoScrollEnabled)
         {
            this.scroller.mx_internal::setUpTextSelectionAutoScroll();
            return;
         }
         _loc14_ = param1.stageX - this.scrollGestureAnchorPoint.x;
         _loc15_ = param1.stageY - this.scrollGestureAnchorPoint.y;
         if(!this.dragTimer)
         {
            this.dragTimer = new Timer(1000 / MAX_DRAG_RATE,0);
            this.dragTimer.addEventListener(TimerEvent.TIMER,this.dragTimerHandler);
         }
         if(!this.dragTimer.running)
         {
            this.addMouseEventHistory(param1.stageX,param1.stageY,GetTimerUtil.mx_internal::getTimer());
            this.scroller.mx_internal::performDrag(_loc14_,_loc15_);
            param1.updateAfterEvent();
            if(Scroller.mx_internal::dragEventThinning)
            {
               this.dragTimer.start();
               this.dragScrollPending = false;
            }
         }
         else
         {
            this.mostRecentDragDeltaX = _loc14_;
            this.mostRecentDragDeltaY = _loc15_;
            this.mostRecentDragTime = GetTimerUtil.mx_internal::getTimer();
            this.dragScrollPending = true;
         }
      }
   }
   
   private function dragTimerHandler(param1:TimerEvent) : void
   {
      if(this.dragScrollPending)
      {
         this.addMouseEventHistory(this.mostRecentDragDeltaX + this.scrollGestureAnchorPoint.x,this.mostRecentDragDeltaY + this.scrollGestureAnchorPoint.y,this.mostRecentDragTime);
         this.scroller.mx_internal::performDrag(this.mostRecentDragDeltaX,this.mostRecentDragDeltaY);
         param1.updateAfterEvent();
         this.dragScrollPending = false;
      }
      else
      {
         this.dragTimer.stop();
      }
   }
   
   private function sbRoot_mouseUpHandler(param1:Event) : void
   {
      var _loc11_:int = 0;
      this.uninstallMouseListeners();
      if(!this.isScrolling)
      {
         return;
      }
      if(this.scroller.mx_internal::textSelectionAutoScrollEnabled)
      {
         this.scroller.mx_internal::stopTextSelectionAutoScroll();
         this.endTouchScroll();
         return;
      }
      if(this.dragTimer)
      {
         if(this.dragScrollPending)
         {
            this.addMouseEventHistory(this.mostRecentDragDeltaX + this.scrollGestureAnchorPoint.x,this.mostRecentDragDeltaY + this.scrollGestureAnchorPoint.y,this.mostRecentDragTime);
            this.scroller.mx_internal::performDrag(this.mostRecentDragDeltaX,this.mostRecentDragDeltaY);
            if(param1 is MouseEvent)
            {
               MouseEvent(param1).updateAfterEvent();
            }
         }
         this.dragTimer.stop();
         this.dragTimer.removeEventListener(TimerEvent.TIMER,this.dragTimerHandler);
         this.dragTimer = null;
      }
      if(this.scroller.mx_internal::preventThrows)
      {
         this.endTouchScroll();
         return;
      }
      if(!this.isIOS && param1 is MouseEvent)
      {
         this.addMouseEventHistory(MouseEvent(param1).stageX,MouseEvent(param1).stageY,GetTimerUtil.mx_internal::getTimer());
      }
      var _loc2_:Number = GetTimerUtil.mx_internal::getTimer();
      var _loc3_:Number = 0;
      var _loc4_:int = this.mouseEventLength > EVENT_HISTORY_LENGTH ? int(EVENT_HISTORY_LENGTH) : int(this.mouseEventLength);
      var _loc5_:int = (this.mouseEventLength - _loc4_) % EVENT_HISTORY_LENGTH;
      var _loc6_:int = (this.mouseEventLength - 1) % EVENT_HISTORY_LENGTH;
      var _loc7_:int = _loc5_;
      while(_loc7_ != _loc6_)
      {
         _loc11_ = (_loc7_ + 1) % EVENT_HISTORY_LENGTH;
         _loc3_ += this.mouseEventTimeHistory[_loc11_] - this.mouseEventTimeHistory[_loc7_];
         _loc7_ = _loc11_;
      }
      _loc3_ /= _loc4_ - 1;
      if(!this.scroller.stage)
      {
         this.endTouchScroll();
         return;
      }
      var _loc8_:Number = MIN_START_VELOCITY_IPS * Scroller.mx_internal::effectiveScreenDPI / 1000;
      var _loc9_:Point = this.calculateThrowVelocity();
      var _loc10_:Point = this.calculateFinalDragVelocity(100);
      if(this.isIOS)
      {
         _loc9_ = _loc10_;
      }
      if(_loc9_.length <= _loc8_)
      {
         _loc9_.x = 0;
         _loc9_.y = 0;
      }
      if(_loc10_.length <= _loc8_)
      {
         _loc9_.x = 0;
         _loc9_.y = 0;
      }
      _loc9_.x *= 100000;
      _loc9_.y *= 100000;
      _loc9_ = this.scroller.globalToLocal(_loc9_).subtract(this.scroller.globalToLocal(new Point(0,0)));
      _loc9_.x /= 100000;
      _loc9_.y /= 100000;
      this.scroller.mx_internal::performThrow(_loc9_.x,_loc9_.y);
   }
   
   private function calculateThrowVelocity() : Point
   {
      var _loc12_:int = 0;
      var _loc13_:Number = NaN;
      var _loc14_:Number = NaN;
      var _loc15_:Number = NaN;
      var _loc1_:int = this.mouseEventLength > EVENT_HISTORY_LENGTH ? int(EVENT_HISTORY_LENGTH) : int(this.mouseEventLength);
      var _loc2_:int = (this.mouseEventLength - _loc1_) % EVENT_HISTORY_LENGTH;
      var _loc3_:int = (this.mouseEventLength - 1) % EVENT_HISTORY_LENGTH;
      var _loc4_:Number = 0;
      var _loc5_:Number = 0;
      var _loc6_:Number = 0;
      var _loc7_:int = _loc2_;
      var _loc8_:int = 0;
      while(_loc7_ != _loc3_)
      {
         _loc12_ = (_loc7_ + 1) % EVENT_HISTORY_LENGTH;
         _loc13_ = this.mouseEventTimeHistory[_loc12_] - this.mouseEventTimeHistory[_loc7_];
         _loc14_ = this.mouseEventCoordinatesHistory[_loc12_].x - this.mouseEventCoordinatesHistory[_loc7_].x;
         _loc15_ = this.mouseEventCoordinatesHistory[_loc12_].y - this.mouseEventCoordinatesHistory[_loc7_].y;
         if(_loc13_ != 0)
         {
            _loc4_ += _loc14_ / _loc13_ * VELOCITY_WEIGHTS[_loc8_];
            _loc5_ += _loc15_ / _loc13_ * VELOCITY_WEIGHTS[_loc8_];
            _loc6_ += VELOCITY_WEIGHTS[_loc8_];
         }
         _loc7_ = _loc12_;
         _loc8_++;
      }
      if(_loc6_ == 0)
      {
         return new Point(0,0);
      }
      var _loc9_:Number = MAX_THROW_VELOCITY_IPS * Scroller.mx_internal::effectiveScreenDPI / 1000;
      var _loc10_:Number = Math.min(_loc9_,Math.max(-_loc9_,_loc4_ / _loc6_));
      var _loc11_:Number = Math.min(_loc9_,Math.max(-_loc9_,_loc5_ / _loc6_));
      return new Point(_loc10_,_loc11_);
   }
   
   private function calculateFinalDragVelocity(param1:Number) : Point
   {
      var _loc9_:int = 0;
      var _loc10_:Number = NaN;
      var _loc11_:Number = NaN;
      var _loc12_:Number = NaN;
      var _loc13_:Number = NaN;
      var _loc14_:Number = NaN;
      var _loc15_:Number = NaN;
      var _loc16_:Number = NaN;
      var _loc2_:int = this.mouseEventLength > EVENT_HISTORY_LENGTH ? int(EVENT_HISTORY_LENGTH) : int(this.mouseEventLength);
      var _loc3_:int = (this.mouseEventLength - _loc2_) % EVENT_HISTORY_LENGTH;
      var _loc4_:int;
      var _loc5_:int = _loc4_ = (this.mouseEventLength - 1) % EVENT_HISTORY_LENGTH;
      var _loc6_:Number = 0;
      var _loc7_:Number = 0;
      var _loc8_:Number = 0;
      while(param1 > 0 && _loc5_ != _loc3_)
      {
         _loc9_ = _loc5_ - 1;
         if(_loc9_ < 0)
         {
            _loc9_ += EVENT_HISTORY_LENGTH;
         }
         _loc10_ = this.mouseEventTimeHistory[_loc5_] - this.mouseEventTimeHistory[_loc9_];
         _loc11_ = this.mouseEventCoordinatesHistory[_loc5_].x - this.mouseEventCoordinatesHistory[_loc9_].x;
         _loc12_ = this.mouseEventCoordinatesHistory[_loc5_].y - this.mouseEventCoordinatesHistory[_loc9_].y;
         if(_loc10_ > param1)
         {
            _loc13_ = param1 / _loc10_;
            _loc11_ *= _loc13_;
            _loc12_ *= _loc13_;
            _loc10_ = param1;
         }
         param1 -= _loc10_;
         _loc6_ += _loc10_;
         _loc7_ += _loc11_;
         _loc8_ += _loc12_;
         _loc5_ = _loc9_;
      }
      if(_loc6_ == 0)
      {
         return new Point(0,0);
      }
      if(this.isIOS)
      {
         _loc14_ = MAX_THROW_VELOCITY_IPS * Scroller.mx_internal::effectiveScreenDPI / 1000;
         _loc15_ = Math.min(_loc14_,Math.max(-_loc14_,_loc7_ / _loc6_));
         _loc16_ = Math.min(_loc14_,Math.max(-_loc14_,_loc8_ / _loc6_));
         return new Point(_loc15_,_loc16_);
      }
      return new Point(_loc7_ / _loc6_,_loc8_ / _loc6_);
   }
   
   private function dispatchBubblingEventOnMouseDownedDisplayObject(param1:Event) : Boolean
   {
      var _loc2_:Boolean = true;
      if(this.mouseDownedDisplayObject)
      {
         _loc2_ &&= Boolean(this.mouseDownedDisplayObject.dispatchEvent(param1));
         if(!this.mouseDownedDisplayObject.stage)
         {
            if(Boolean(this.scroller) && !this.scroller.contains(this.mouseDownedDisplayObject))
            {
               _loc2_ &&= Boolean(this.scroller.dispatchEvent(param1));
            }
         }
      }
      else
      {
         _loc2_ &&= Boolean(this.scroller.dispatchEvent(param1));
      }
      return _loc2_;
   }
   
   public function endTouchScroll() : void
   {
      var _loc1_:TouchInteractionEvent = null;
      if(this.isScrolling)
      {
         this.isScrolling = false;
         _loc1_ = new TouchInteractionEvent(TouchInteractionEvent.TOUCH_INTERACTION_END,true);
         _loc1_.relatedObject = this.scroller;
         _loc1_.reason = TouchInteractionReason.SCROLL;
         this.dispatchBubblingEventOnMouseDownedDisplayObject(_loc1_);
      }
   }
}

class PartialExponentialCurve extends EaseInOutBase
{
   
   private var _xscale:Number;
   
   private var _ymult:Number;
   
   private var _exponent:Number;
   
   public function PartialExponentialCurve(param1:Number, param2:Number)
   {
      super(0);
      this._exponent = param1;
      this._xscale = param2;
      this._ymult = 1 / (1 - Math.pow(1 - this._xscale,this._exponent));
   }
   
   override protected function easeOut(param1:Number) : Number
   {
      return this._ymult * (1 - Math.pow(1 - param1 * this._xscale,this._exponent));
   }
}
