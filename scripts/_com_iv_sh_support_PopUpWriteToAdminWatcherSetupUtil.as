package
{
   import com.iv.sh.support.PopUpWriteToAdmin;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_support_PopUpWriteToAdminWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_support_PopUpWriteToAdminWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpWriteToAdmin.watcherSetupUtil = new _com_iv_sh_support_PopUpWriteToAdminWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("errorDescr",{"propertyChange":true},[param4[4]],param2);
         param5[2] = new PropertyWatcher("errorEmail",{"propertyChange":true},[param4[1]],param2);
         param5[4] = new StaticPropertyWatcher("app",{"propertyChange":true},[param4[2]],null);
         param5[5] = new PropertyWatcher("realId",{"propertyChange":true},[param4[2]],null);
         param5[7].updateParent(param1);
         param5[2].updateParent(param1);
         param5[4].updateParent(SH);
         param5[4].addChild(param5[5]);
      }
   }
}

