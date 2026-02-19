package
{
   import com.iv.sh.ref.PopUpRef;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ref_PopUpRefWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ref_PopUpRefWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpRef.watcherSetupUtil = new _com_iv_sh_ref_PopUpRefWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("ref",{"propertyChange":true},[param4[0],param4[11],param4[16],param4[17]],param2);
         param5[14] = new PropertyWatcher("id",{"propertyChange":true},[param4[11]],null);
         param5[18] = new PropertyWatcher("livePoints",{"propertyChange":true},[param4[16],param4[17]],null);
         param5[2] = new PropertyWatcher("money",{"propertyChange":true},[param4[0]],null);
         param5[4] = new PropertyWatcher("shows",{"propertyChange":true},[param4[0]],null);
         param5[8] = new PropertyWatcher("request",{"propertyChange":true},[param4[3],param4[5],param4[6],param4[7],param4[8],param4[9]],param2);
         param5[12] = new PropertyWatcher("time",{"propertyChange":true},[param4[3]],null);
         param5[10] = new PropertyWatcher("num",{"propertyChange":true},[param4[3]],null);
         param5[9] = new PropertyWatcher("money",{"propertyChange":true},[param4[3]],null);
         param5[13] = new PropertyWatcher("ip",{"propertyChange":true},[param4[3]],null);
         param5[16] = new StaticPropertyWatcher("app",{"propertyChange":true},[param4[13],param4[14],param4[15]],null);
         param5[17] = new PropertyWatcher("admin",{"propertyChange":true},[param4[13],param4[14],param4[15]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[14]);
         param5[1].addChild(param5[18]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[4]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[12]);
         param5[8].addChild(param5[10]);
         param5[8].addChild(param5[9]);
         param5[8].addChild(param5[13]);
         param5[16].updateParent(SH);
         param5[16].addChild(param5[17]);
      }
   }
}

