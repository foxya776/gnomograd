package
{
   import com.iv.sh.ui.inputform.InputForm;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ui_inputform_InputFormWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ui_inputform_InputFormWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InputForm.watcherSetupUtil = new _com_iv_sh_ui_inputform_InputFormWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("title",{"propertyChange":true},[param4[6]],param2);
         param5[3] = new PropertyWatcher("text",{"propertyChange":true},[param4[4]],param2);
         param5[4] = new PropertyWatcher("maxChars",{"propertyChange":true},[param4[5]],param2);
         param5[0] = new PropertyWatcher("hideSendBut",{"propertyChange":true},[param4[0],param4[1],param4[7],param4[8]],param2);
         param5[2] = new PropertyWatcher("editable",{"propertyChange":true},[param4[3]],param2);
         param5[1] = new PropertyWatcher("restrict",{"propertyChange":true},[param4[2]],param2);
         param5[5].updateParent(param1);
         param5[3].updateParent(param1);
         param5[4].updateParent(param1);
         param5[0].updateParent(param1);
         param5[2].updateParent(param1);
         param5[1].updateParent(param1);
      }
   }
}

