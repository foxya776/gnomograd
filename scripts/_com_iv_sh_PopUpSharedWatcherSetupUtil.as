package
{
   import com.iv.sh.PopUpShared;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_PopUpSharedWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_PopUpSharedWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpShared.watcherSetupUtil = new _com_iv_sh_PopUpSharedWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

