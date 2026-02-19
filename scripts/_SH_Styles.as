package
{
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.skins.halo.BusyCursor;
   import mx.skins.halo.DataGridColumnDropIndicator;
   import mx.skins.halo.DataGridColumnResizeSkin;
   import mx.skins.halo.DefaultDragImage;
   import mx.skins.halo.HaloFocusRect;
   import mx.skins.halo.ListDropIndicator;
   import mx.skins.halo.ToolTipBorder;
   import mx.skins.spark.BorderSkin;
   import mx.skins.spark.ButtonSkin;
   import mx.skins.spark.ContainerBorderSkin;
   import mx.skins.spark.DataGridHeaderBackgroundSkin;
   import mx.skins.spark.DataGridHeaderSeparatorSkin;
   import mx.skins.spark.DataGridSortArrow;
   import mx.skins.spark.DefaultButtonSkin;
   import mx.skins.spark.PanelBorderSkin;
   import mx.skins.spark.ScrollBarDownButtonSkin;
   import mx.skins.spark.ScrollBarThumbSkin;
   import mx.skins.spark.ScrollBarTrackSkin;
   import mx.skins.spark.ScrollBarUpButtonSkin;
   import mx.skins.spark.SliderThumbSkin;
   import mx.skins.spark.SliderTrackHighlightSkin;
   import mx.skins.spark.SliderTrackSkin;
   import mx.skins.spark.TextInputBorderSkin;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.IStyleManager2;
   import mx.utils.ObjectUtil;
   import spark.components.Label;
   import spark.skins.spark.ApplicationSkin;
   import spark.skins.spark.ButtonSkin;
   import spark.skins.spark.CheckBoxSkin;
   import spark.skins.spark.DefaultButtonSkin;
   import spark.skins.spark.ErrorSkin;
   import spark.skins.spark.FocusSkin;
   import spark.skins.spark.HScrollBarSkin;
   import spark.skins.spark.ScrollerSkin;
   import spark.skins.spark.SkinnableContainerSkin;
   import spark.skins.spark.TextAreaSkin;
   import spark.skins.spark.TextInputSkin;
   import spark.skins.spark.VScrollBarSkin;
   
   public class _SH_Styles
   {
      
      private static var _embed_css_Assets_swf__1291236433_cursorStretch_1209699474:Class = _class_embed_css_Assets_swf__1291236433_cursorStretch_1209699474;
      
      private static var _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragLink_1070163530:Class = _class_embed_css_Assets_swf__1291236433_mx_skins_cursor_DragLink_1070163530;
      
      private static var _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragMove_1070189105:Class = _class_embed_css_Assets_swf__1291236433_mx_skins_cursor_DragMove_1070189105;
      
      private static var _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragCopy_1069901525:Class = _class_embed_css_Assets_swf__1291236433_mx_skins_cursor_DragCopy_1069901525;
      
      private static var _embed_css_Assets_swf__1291236433_mx_skins_cursor_BusyCursor_751722091:Class = _class_embed_css_Assets_swf__1291236433_mx_skins_cursor_BusyCursor_751722091;
      
      private static var _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragReject_417351009:Class = _class_embed_css_Assets_swf__1291236433_mx_skins_cursor_DragReject_417351009;
      
      public function _SH_Styles()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var mergedStyle:CSSStyleDeclaration = null;
         var fbs:IFlexModuleFactory = param1;
         var styleManager:IStyleManager2 = fbs.getImplementation("mx.styles::IStyleManager2") as IStyleManager2;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("global",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("global");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.lineHeight = "120%";
               this.unfocusedTextSelectionColor = 15263976;
               this.kerning = "default";
               this.caretColor = 92159;
               this.iconColor = 1118481;
               this.verticalScrollPolicy = "auto";
               this.horizontalAlign = "left";
               this.filled = true;
               this.showErrorTip = true;
               this.textDecoration = "none";
               this.columnCount = "auto";
               this.liveDragging = true;
               this.dominantBaseline = "auto";
               this.fontThickness = 0;
               this.focusBlendMode = "normal";
               this.blockProgression = "tb";
               this.buttonColor = 7305079;
               this.indentation = 17;
               this.autoThumbVisibility = true;
               this.textAlignLast = "start";
               this.paddingTop = 0;
               this.textAlpha = 1;
               this.chromeColor = 13421772;
               this.rollOverColor = 13556719;
               this.bevel = true;
               this.fontSize = 12;
               this.shadowColor = 15658734;
               this.columnGap = 20;
               this.paddingLeft = 0;
               this.paragraphEndIndent = 0;
               this.fontWeight = "normal";
               this.indicatorGap = 14;
               this.focusSkin = HaloFocusRect;
               this.breakOpportunity = "auto";
               this.leading = 2;
               this.symbolColor = 0;
               this.renderingMode = "cff";
               this.iconPlacement = "left";
               this.borderThickness = 1;
               this.paragraphStartIndent = 0;
               this.layoutDirection = "ltr";
               this.contentBackgroundColor = 16777215;
               this.backgroundSize = "auto";
               this.paragraphSpaceAfter = 0;
               this.borderColor = 6908265;
               this.shadowDistance = 2;
               this.stroked = false;
               this.digitWidth = "default";
               this.verticalAlign = "top";
               this.ligatureLevel = "common";
               this.firstBaselineOffset = "auto";
               this.fillAlphas = [0.6,0.4,0.75,0.65];
               this.version = "4.0.0";
               this.shadowDirection = "center";
               this.fontLookup = "embeddedCFF";
               this.lineBreak = "toFit";
               this.repeatInterval = 35;
               this.openDuration = 1;
               this.paragraphSpaceBefore = 0;
               this.fontFamily = "Arial";
               this.paddingBottom = 0;
               this.strokeWidth = 1;
               this.lineThrough = false;
               this.textFieldClass = UITextField;
               this.alignmentBaseline = "useDominantBaseline";
               this.trackingLeft = 0;
               this.verticalGridLines = true;
               this.fontStyle = "normal";
               this.dropShadowColor = 0;
               this.accentColor = 39423;
               this.backgroundImageFillMode = "scale";
               this.selectionColor = 11060974;
               this.borderWeight = 1;
               this.focusRoundedCorners = "tl tr bl br";
               this.paddingRight = 0;
               this.borderSides = "left top right bottom";
               this.disabledIconColor = 10066329;
               this.textJustify = "interWord";
               this.focusColor = 7385838;
               this.borderVisible = true;
               this.selectionDuration = 250;
               this.typographicCase = "default";
               this.highlightAlphas = [0.3,0];
               this.fillColor = 16777215;
               this.showErrorSkin = true;
               this.textRollOverColor = 0;
               this.rollOverOpenDelay = 200;
               this.digitCase = "default";
               this.shadowCapColor = 14015965;
               this.inactiveTextSelectionColor = 15263976;
               this.backgroundAlpha = 1;
               this.justificationRule = "auto";
               this.roundedBottomCorners = true;
               this.dropShadowVisible = false;
               this.trackingRight = 0;
               this.fillColors = [16777215,13421772,16777215,15658734];
               this.horizontalGap = 8;
               this.borderCapColor = 9542041;
               this.leadingModel = "auto";
               this.selectionDisabledColor = 14540253;
               this.closeDuration = 50;
               this.embedFonts = false;
               this.letterSpacing = 0;
               this.focusAlpha = 0.55;
               this.borderAlpha = 1;
               this.baselineShift = 0;
               this.focusedTextSelectionColor = 11060974;
               this.fontSharpness = 0;
               this.modalTransparencyDuration = 100;
               this.justificationStyle = "auto";
               this.borderStyle = "inset";
               this.contentBackgroundAlpha = 1;
               this.textRotation = "auto";
               this.fontAntiAliasType = "advanced";
               this.errorColor = 16646144;
               this.direction = "ltr";
               this.cffHinting = "horizontalStem";
               this.horizontalGridLineColor = 16250871;
               this.locale = "en";
               this.cornerRadius = 2;
               this.modalTransparencyColor = 14540253;
               this.disabledAlpha = 0.5;
               this.textIndent = 0;
               this.verticalGridLineColor = 14015965;
               this.themeColor = 7385838;
               this.tabStops = null;
               this.modalTransparency = 0.5;
               this.smoothScrolling = true;
               this.columnWidth = "auto";
               this.textAlign = "start";
               this.horizontalScrollPolicy = "auto";
               this.textSelectedColor = 0;
               this.interactionMode = "mouse";
               this.whiteSpaceCollapse = "collapse";
               this.fontGridFitType = "pixel";
               this.horizontalGridLines = false;
               this.fullScreenHideControlsDelay = 3000;
               this.useRollOver = true;
               this.repeatDelay = 500;
               this.focusThickness = 2;
               this.verticalGap = 6;
               this.disabledColor = 11187123;
               this.modalTransparencyBlur = 3;
               this.slideDuration = 300;
               this.color = 0;
               this.fixedThumbSize = false;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","errorTip");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".errorTip");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
               this.borderStyle = "errorTipRight";
               this.paddingTop = 4;
               this.borderColor = 13510953;
               this.color = 16777215;
               this.fontSize = 10;
               this.shadowColor = 0;
               this.paddingLeft = 4;
               this.paddingBottom = 4;
               this.paddingRight = 4;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","headerDragProxyStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".headerDragProxyStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","dateFieldPopup");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".dateFieldPopup");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.dropShadowVisible = true;
               this.borderThickness = 1;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","swatchPanelTextField");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".swatchPanelTextField");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "inset";
               this.borderColor = 14015965;
               this.highlightColor = 12897484;
               this.backgroundColor = 16777215;
               this.shadowCapColor = 14015965;
               this.shadowColor = 14015965;
               this.paddingLeft = 5;
               this.buttonColor = 7305079;
               this.borderCapColor = 9542041;
               this.paddingRight = 5;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","todayStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".todayStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 0;
               this.textAlign = "center";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","weekDayStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".weekDayStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
               this.textAlign = "center";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowStatus");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".windowStatus");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 6710886;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowStyles");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".windowStyles");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.managers.CursorManager",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.CursorManager");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.busyCursor = BusyCursor;
               this.busyCursorBackground = _embed_css_Assets_swf__1291236433_mx_skins_cursor_BusyCursor_751722091;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.managers.DragManager",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.DragManager");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.copyCursor = _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragCopy_1069901525;
               this.moveCursor = _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragMove_1070189105;
               this.rejectCursor = _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragReject_417351009;
               this.linkCursor = _embed_css_Assets_swf__1291236433_mx_skins_cursor_DragLink_1070163530;
               this.defaultDragImageSkin = DefaultDragImage;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ToolTip",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ToolTip");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "toolTip";
               this.paddingTop = 2;
               this.borderColor = 9542041;
               this.backgroundColor = 16777164;
               this.borderSkin = ToolTipBorder;
               this.cornerRadius = 2;
               this.fontSize = 10;
               this.paddingLeft = 4;
               this.paddingBottom = 2;
               this.backgroundAlpha = 0.95;
               this.paddingRight = 4;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Application",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Application");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.skinClass = ApplicationSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Button",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = spark.skins.spark.ButtonSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","emphasized");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.Button",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button.emphasized");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = spark.skins.spark.DefaultButtonSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.CheckBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.CheckBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = CheckBoxSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.HScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.HScrollBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = HScrollBarSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.RichEditableText",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.RichEditableText");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.layoutDirection = "ltr";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Scroller",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Scroller");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = ScrollerSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.supportClasses.SkinnableComponent",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableComponent");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.focusSkin = FocusSkin;
               this.errorSkin = ErrorSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.SkinnableContainer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnableContainer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = SkinnableContainerSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("pseudo","normalWithPrompt");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.supportClasses.SkinnableTextBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableTextBase:normalWithPrompt");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 12237498;
               this.fontStyle = "italic";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("pseudo","disabledWithPrompt");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.supportClasses.SkinnableTextBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableTextBase:disabledWithPrompt");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 12237498;
               this.fontStyle = "italic";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.supportClasses.TextBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.TextBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.layoutDirection = "ltr";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.TextArea",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.TextArea");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 5;
               this.skinClass = TextAreaSkin;
               this.paddingLeft = 3;
               this.paddingBottom = 3;
               this.paddingRight = 3;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.TextInput",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.TextInput");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 5;
               this.skinClass = TextInputSkin;
               this.paddingLeft = 3;
               this.paddingBottom = 3;
               this.paddingRight = 3;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.VScrollBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = VScrollBarSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Alert",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Alert");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 2;
               this.paddingLeft = 10;
               this.paddingBottom = 10;
               this.paddingRight = 10;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Button",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Button");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.textAlign = "center";
               this.labelVerticalOffset = 1;
               this.emphasizedSkin = mx.skins.spark.DefaultButtonSkin;
               this.verticalGap = 2;
               this.horizontalGap = 2;
               this.skin = mx.skins.spark.ButtonSkin;
               this.paddingLeft = 6;
               this.paddingRight = 6;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.core.Container",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Container");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "none";
               this.borderSkin = ContainerBorderSkin;
               this.cornerRadius = 0;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.ControlBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.ControlBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.disabledOverlayAlpha = 0;
               this.borderStyle = "none";
               this.paddingTop = 11;
               this.verticalAlign = "middle";
               this.paddingLeft = 11;
               this.paddingBottom = 11;
               this.paddingRight = 11;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.DataGrid",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.DataGrid");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.sortArrowSkin = DataGridSortArrow;
               this.columnDropIndicatorSkin = DataGridColumnDropIndicator;
               this.columnResizeSkin = DataGridColumnResizeSkin;
               this.stretchCursor = _embed_css_Assets_swf__1291236433_cursorStretch_1209699474;
               this.alternatingItemColors = [15725562,16777215];
               this.headerSeparatorSkin = DataGridHeaderSeparatorSkin;
               this.headerBackgroundSkin = DataGridHeaderBackgroundSkin;
               this.headerDragProxyStyleName = "headerDragProxyStyle";
               this.verticalGridLineColor = 6908265;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.dataGridClasses.DataGridItemRenderer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.dataGridClasses.DataGridItemRenderer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingLeft = 5;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.HSlider",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HSlider");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.tickLength = 4;
               this.dataTipPlacement = "top";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.listClasses.ListBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.listClasses.ListBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "solid";
               this.paddingTop = 2;
               this.dropIndicatorSkin = ListDropIndicator;
               this.paddingLeft = 2;
               this.paddingBottom = 2;
               this.paddingRight = 0;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.Panel",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Panel");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.statusStyleName = "windowStatus";
               this.borderStyle = "default";
               this.borderColor = 0;
               this.paddingTop = 0;
               this.backgroundColor = 16777215;
               this.cornerRadius = 0;
               this.titleBackgroundSkin = UIComponent;
               this.borderAlpha = 0.5;
               this.paddingLeft = 0;
               this.paddingRight = 0;
               this.resizeEndEffect = "Dissolve";
               this.titleStyleName = "windowStyles";
               this.resizeStartEffect = "Dissolve";
               this.dropShadowVisible = true;
               this.borderSkin = PanelBorderSkin;
               this.paddingBottom = 0;
            };
         }
         effects = style.mx_internal::effects;
         if(!effects)
         {
            effects = style.mx_internal::effects = [];
         }
         effects.push("resizeEndEffect");
         effects.push("resizeStartEffect");
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.scrollClasses.ScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.scrollClasses.ScrollBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.thumbOffset = 0;
               this.paddingTop = 0;
               this.trackSkin = ScrollBarTrackSkin;
               this.downArrowSkin = ScrollBarDownButtonSkin;
               this.upArrowSkin = ScrollBarUpButtonSkin;
               this.paddingLeft = 0;
               this.paddingBottom = 0;
               this.thumbSkin = ScrollBarThumbSkin;
               this.paddingRight = 0;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.core.ScrollControlBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.ScrollControlBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderSkin = BorderSkin;
               this.focusRoundedCorners = " ";
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.sliderClasses.Slider",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.sliderClasses.Slider");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.thumbOffset = 0;
               this.slideDuration = 300;
               this.labelOffset = -10;
               this.tickColor = 7305079;
               this.dataTipOffset = 16;
               this.trackSkin = SliderTrackSkin;
               this.dataTipPrecision = 2;
               this.trackHighlightSkin = SliderTrackHighlightSkin;
               this.tickThickness = 1;
               this.showTrackHighlight = false;
               this.tickOffset = -6;
               this.thumbSkin = SliderThumbSkin;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaVScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.HScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HScrollBar.textAreaVScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaHScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.VScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.VScrollBar.textAreaHScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.TextInput",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TextInput");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 2;
               this.borderSkin = TextInputBorderSkin;
               this.paddingLeft = 2;
               this.paddingRight = 2;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.charts.AxisRenderer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.charts.AxisRenderer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.labelClass = Label;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.charts.chartClasses.DataTip",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.charts.chartClasses.DataTip");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
            };
         }
         if(mergedStyle != null && (Boolean(mergedStyle.defaultFactory == null) || Boolean(ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory()))))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
      }
   }
}

