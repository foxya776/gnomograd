package
{
   import com.iv.sh.ui.PopUpChangeVersion;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ui_PopUpChangeVersionWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ui_PopUpChangeVersionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpChangeVersion.watcherSetupUtil = new _com_iv_sh_ui_PopUpChangeVersionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new StaticPropertyWatcher("app",{"propertyChange":true},[param4[0]],null);
         param5[1] = new PropertyWatcher("rsloader",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("appLoader",{"propertyChange":true},[param4[0]],null);
         param5[3] = new PropertyWatcher("app",{"propertyChange":true},[param4[0]],null);
         param5[4] = new PropertyWatcher("version",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(SH);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
         param5[2].addChild(param5[3]);
         param5[3].addChild(param5[4]);
      }
   }
}

