package
{
   import com.iv.sh.ref.PopUpRefStatsShows;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ref_PopUpRefStatsShowsWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ref_PopUpRefStatsShowsWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpRefStatsShows.watcherSetupUtil = new _com_iv_sh_ref_PopUpRefStatsShowsWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("s1",{"propertyChange":true},[param4[1]],param2);
         param5[5] = new PropertyWatcher("maxMounth",{"propertyChange":true},[param4[5]],param2);
         param5[4] = new PropertyWatcher("minMounth",{"propertyChange":true},[param4[4]],param2);
         param5[1].updateParent(param1);
         param5[5].updateParent(param1);
         param5[4].updateParent(param1);
      }
   }
}

