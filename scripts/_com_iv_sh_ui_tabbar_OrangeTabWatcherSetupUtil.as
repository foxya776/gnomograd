package
{
   import com.iv.sh.ui.tabbar.OrangeTab;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ui_tabbar_OrangeTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ui_tabbar_OrangeTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OrangeTab.watcherSetupUtil = new _com_iv_sh_ui_tabbar_OrangeTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("title",{"propertyChange":true},[param4[2]],param2);
         param5[1] = new PropertyWatcher("selected",{"propertyChange":true},[param4[1],param4[3]],param2);
         param5[0] = new PropertyWatcher("over",{"propertyChange":true},[param4[0]],param2);
         param5[2].updateParent(param1);
         param5[1].updateParent(param1);
         param5[0].updateParent(param1);
      }
   }
}

