package
{
   import com.iv.sh.ref.PopUpRefsTabBar;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ref_PopUpRefsTabBarWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ref_PopUpRefsTabBarWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpRefsTabBar.watcherSetupUtil = new _com_iv_sh_ref_PopUpRefsTabBarWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("selected",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3]],param2);
         param5[0].updateParent(param1);
      }
   }
}

