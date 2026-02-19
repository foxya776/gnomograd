package
{
   import com.iv.sh.ref.PopUpAddLivePoint;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ref_PopUpAddLivePointWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ref_PopUpAddLivePointWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpAddLivePoint.watcherSetupUtil = new _com_iv_sh_ref_PopUpAddLivePointWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("ref",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("livePoints",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

