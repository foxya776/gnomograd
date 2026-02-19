package
{
   import flash.net.getClassByAlias;
   import flash.net.registerClassAlias;
   import flash.system.*;
   import flash.utils.*;
   import mx.accessibility.AlertAccImpl;
   import mx.accessibility.ButtonAccImpl;
   import mx.accessibility.DataGridAccImpl;
   import mx.accessibility.LabelAccImpl;
   import mx.accessibility.ListBaseAccImpl;
   import mx.accessibility.PanelAccImpl;
   import mx.accessibility.SliderAccImpl;
   import mx.accessibility.UIComponentAccProps;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.managers.systemClasses.ChildManager;
   import mx.styles.IStyleManager2;
   import mx.styles.StyleManagerImpl;
   import mx.utils.ObjectProxy;
   import spark.accessibility.ButtonBaseAccImpl;
   import spark.accessibility.CheckBoxAccImpl;
   import spark.accessibility.RichEditableTextAccImpl;
   import spark.accessibility.TextBaseAccImpl;
   import spark.accessibility.ToggleButtonAccImpl;
   
   public class _SH_FlexInit
   {
      
      public function _SH_FlexInit()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var styleNames:Array;
         var i:int;
         var styleManager:IStyleManager2 = null;
         var fbs:IFlexModuleFactory = param1;
         new ChildManager(fbs);
         styleManager = new StyleManagerImpl(fbs);
         EffectManager.mx_internal::registerEffectTrigger("addedEffect","added");
         EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect","creationComplete");
         EffectManager.mx_internal::registerEffectTrigger("focusInEffect","focusIn");
         EffectManager.mx_internal::registerEffectTrigger("focusOutEffect","focusOut");
         EffectManager.mx_internal::registerEffectTrigger("hideDataEffect","hideData");
         EffectManager.mx_internal::registerEffectTrigger("hideEffect","hide");
         EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect","mouseDown");
         EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect","mouseUp");
         EffectManager.mx_internal::registerEffectTrigger("moveEffect","move");
         EffectManager.mx_internal::registerEffectTrigger("removedEffect","removed");
         EffectManager.mx_internal::registerEffectTrigger("resizeEffect","resize");
         EffectManager.mx_internal::registerEffectTrigger("resizeEndEffect","resizeEnd");
         EffectManager.mx_internal::registerEffectTrigger("resizeStartEffect","resizeStart");
         EffectManager.mx_internal::registerEffectTrigger("rollOutEffect","rollOut");
         EffectManager.mx_internal::registerEffectTrigger("rollOverEffect","rollOver");
         EffectManager.mx_internal::registerEffectTrigger("showDataEffect","showData");
         EffectManager.mx_internal::registerEffectTrigger("showEffect","show");
         if(Capabilities.hasAccessibility)
         {
            PanelAccImpl.enableAccessibility();
            ListBaseAccImpl.enableAccessibility();
            ButtonBaseAccImpl.enableAccessibility();
            ToggleButtonAccImpl.enableAccessibility();
            AlertAccImpl.enableAccessibility();
            RichEditableTextAccImpl.enableAccessibility();
            LabelAccImpl.enableAccessibility();
            TextBaseAccImpl.enableAccessibility();
            CheckBoxAccImpl.enableAccessibility();
            SliderAccImpl.enableAccessibility();
            DataGridAccImpl.enableAccessibility();
            ButtonAccImpl.enableAccessibility();
            UIComponentAccProps.enableAccessibility();
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayCollection") != ArrayCollection)
            {
               registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayList") != ArrayList)
            {
               registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ObjectProxy") != ObjectProxy)
            {
               registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
         }
         styleNames = ["lineHeight","unfocusedTextSelectionColor","kerning","iconColor","listAutoPadding","textDecoration","showErrorTip","dominantBaseline","adjustedRadius","fontThickness","textShadowColor","blockProgression","textAlignLast","listStylePosition","textShadowAlpha","textAlpha","chromeColor","rollOverColor","itemRollOverColor","fontSize","shadowColor","paragraphEndIndent","fontWeight","breakOpportunity","leading","renderingMode","symbolColor","paragraphStartIndent","layoutDirection","footerColors","contentBackgroundColor","paragraphSpaceAfter","digitWidth","ligatureLevel","touchDelay","firstBaselineOffset","itemDisabledColor","fontLookup","paragraphSpaceBefore","fontFamily","lineThrough","alignmentBaseline","trackingLeft","fontStyle","dropShadowColor","accentColor","selectionColor","disabledIconColor","textJustify","focusColor","alternatingItemColors","typographicCase","showErrorSkin","textRollOverColor","digitCase","inactiveTextSelectionColor","justificationRule","trackingRight","leadingModel"
         ,"itemSelectionColor","selectionDisabledColor","letterSpacing","focusedTextSelectionColor","baselineShift","fontSharpness","barColor","axisTitleStyleName","modalTransparencyDuration","justificationStyle","listStyleType","wordSpacing","contentBackgroundAlpha","textRotation","fontAntiAliasType","direction","cffHinting","errorColor","locale","horizontalGridLineColor","backgroundDisabledColor","modalTransparencyColor","textIndent","clearFloats","themeColor","verticalGridLineColor","tabStops","modalTransparency","textAlign","headerColors","textSelectedColor","interactionMode","whiteSpaceCollapse","fontGridFitType","disabledColor","modalTransparencyBlur","downColor","color"];
         i = 0;
         while(i < styleNames.length)
         {
            styleManager.registerInheritingStyle(styleNames[i]);
            i++;
         }
      }
   }
}

import mx.core.TextFieldFactory;

TextFieldFactory;

