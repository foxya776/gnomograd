package
{
   import com.iv.sh.ref.PopUpForDevelopers;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ref_PopUpForDevelopersWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ref_PopUpForDevelopersWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpForDevelopers.watcherSetupUtil = new _com_iv_sh_ref_PopUpForDevelopersWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[10] = new PropertyWatcher("checkSubApp",{"propertyChange":true},[param4[2]],param2);
         param5[11] = new PropertyWatcher("selected",{"propertyChange":true},[param4[2]],null);
         param5[2] = new StaticPropertyWatcher("app",{"propertyChange":true},[param4[1],param4[2],param4[4]],null);
         param5[3] = new PropertyWatcher("rsloader",{"propertyChange":true},[param4[1],param4[2],param4[4]],null);
         param5[4] = new PropertyWatcher("appLoader",{"propertyChange":true},[param4[1],param4[2],param4[4]],null);
         param5[5] = new PropertyWatcher("app",{"propertyChange":true},[param4[1],param4[2],param4[4]],null);
         param5[6] = new PropertyWatcher("id",{"propertyChange":true},[param4[1],param4[2],param4[4]],null);
         param5[8] = new PropertyWatcher("userId",{"propertyChange":true},[param4[2]],null);
         param5[9] = new PropertyWatcher("regInSite",{"propertyChange":true},[param4[2]],null);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[11]);
         param5[2].updateParent(SH);
         param5[2].addChild(param5[3]);
         param5[3].addChild(param5[4]);
         param5[4].addChild(param5[5]);
         param5[5].addChild(param5[6]);
         param5[2].addChild(param5[8]);
         param5[2].addChild(param5[9]);
      }
   }
}

