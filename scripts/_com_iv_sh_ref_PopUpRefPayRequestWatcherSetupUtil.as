package
{
   import com.iv.sh.ref.PopUpRefPayRequest;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ref_PopUpRefPayRequestWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ref_PopUpRefPayRequestWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpRefPayRequest.watcherSetupUtil = new _com_iv_sh_ref_PopUpRefPayRequestWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("numError",{"propertyChange":true},[param4[1],param4[2]],param2);
         param5[1].updateParent(param1);
      }
   }
}

