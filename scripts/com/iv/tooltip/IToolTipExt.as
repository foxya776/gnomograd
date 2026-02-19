package com.iv.tooltip
{
   import mx.core.IToolTip;
   
   public interface IToolTipExt extends IToolTip
   {
      
      function set target(param1:IToolTiped) : void;
      
      function show(param1:int, param2:int) : void;
   }
}

