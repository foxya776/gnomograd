package
{
   import com.iv.sh.ui.TextInputDefault;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ui_TextInputDefaultWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ui_TextInputDefaultWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TextInputDefault.watcherSetupUtil = new _com_iv_sh_ui_TextInputDefaultWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[0]],param2);
         param5[3] = new PropertyWatcher("defaultText",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("isPass",{"propertyChange":true},[param4[0]],param2);
         param5[2].updateParent(param1);
         param5[3].updateParent(param1);
         param5[1].updateParent(param1);
      }
   }
}

