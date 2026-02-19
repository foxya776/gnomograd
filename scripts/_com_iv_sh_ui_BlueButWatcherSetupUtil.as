package
{
   import com.iv.sh.ui.BlueBut;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ui_BlueButWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ui_BlueButWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BlueBut.watcherSetupUtil = new _com_iv_sh_ui_BlueButWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("title",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[0].updateParent(param1);
      }
   }
}

