package
{
   import com.iv.sh.reg.PopUpReg;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_reg_PopUpRegWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_reg_PopUpRegWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpReg.watcherSetupUtil = new _com_iv_sh_reg_PopUpRegWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[9] = new PropertyWatcher("errorNoPass",{"propertyChange":true},[bindings[10],bindings[11]],propertyGetter);
         watchers[0] = new PropertyWatcher("resourceManager",{"unused":true},[bindings[0],bindings[1],bindings[6],bindings[8],bindings[12],bindings[18],bindings[22],bindings[23],bindings[24],bindings[25],bindings[27],bindings[31],bindings[33],bindings[34]],propertyGetter);
         watchers[1] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","welcome_to_reality_tv"];
         },{"change":true},[bindings[0]],null);
         watchers[2] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","invalid_email"];
         },{"change":true},[bindings[1]],null);
         watchers[6] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","enter_your_email"];
         },{"change":true},[bindings[6]],null);
         watchers[8] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","no_password_is_written"];
         },{"change":true},[bindings[8]],null);
         watchers[10] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","password_too_short"];
         },{"change":true},[bindings[12]],null);
         watchers[15] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","passwords_do_not_match"];
         },{"change":true},[bindings[18]],null);
         watchers[17] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","re_enter_password"];
         },{"change":true},[bindings[22]],null);
         watchers[19] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","send_key_again"];
         },{"change":true},[bindings[24]],null);
         watchers[18] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","send"];
         },{"change":true},[bindings[23]],null);
         watchers[21] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","invalid_secret_key"];
         },{"change":true},[bindings[27]],null);
         watchers[20] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","key_sended"];
         },{"change":true},[bindings[25]],null);
         watchers[23] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","secret_key"];
         },{"change":true},[bindings[31]],null);
         watchers[25] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","i_am_registered"];
         },{"change":true},[bindings[34]],null);
         watchers[24] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","done"];
         },{"change":true},[bindings[33]],null);
         watchers[14] = new PropertyWatcher("isNew",{"propertyChange":true},[bindings[17],bindings[35]],propertyGetter);
         watchers[11] = new PropertyWatcher("shortPass",{"propertyChange":true},[bindings[14],bindings[15]],propertyGetter);
         watchers[16] = new PropertyWatcher("errorAcceptPass",{"propertyChange":true},[bindings[20],bindings[21]],propertyGetter);
         watchers[4] = new PropertyWatcher("errorEmail",{"propertyChange":true},[bindings[3],bindings[4]],propertyGetter);
         watchers[22] = new PropertyWatcher("errorSekretKey",{"propertyChange":true},[bindings[29],bindings[30]],propertyGetter);
         watchers[9].updateParent(target);
         watchers[0].updateParent(target);
         watchers[1].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[1]);
         watchers[2].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[2]);
         watchers[6].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[6]);
         watchers[8].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[8]);
         watchers[10].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[10]);
         watchers[15].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[15]);
         watchers[17].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[17]);
         watchers[19].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[19]);
         watchers[18].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[18]);
         watchers[21].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[21]);
         watchers[20].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[20]);
         watchers[23].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[23]);
         watchers[25].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[25]);
         watchers[24].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[24]);
         watchers[14].updateParent(target);
         watchers[11].updateParent(target);
         watchers[16].updateParent(target);
         watchers[4].updateParent(target);
         watchers[22].updateParent(target);
      }
   }
}

