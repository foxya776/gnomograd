package
{
   import com.iv.tooltip.SHToolTip;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_tooltip_SHToolTipWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_tooltip_SHToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SHToolTip.watcherSetupUtil = new _com_iv_tooltip_SHToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("_text",{"propertyChange":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

