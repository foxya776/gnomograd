package
{
   import com.iv.sh.reg.PopUpLogInSite;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_reg_PopUpLogInSiteWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_reg_PopUpLogInSiteWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpLogInSite.watcherSetupUtil = new _com_iv_sh_reg_PopUpLogInSiteWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("message",{"propertyChange":true},[param4[1],param4[2],param4[3]],param2);
         param5[1].updateParent(param1);
      }
   }
}

