package
{
   import com.iv.sh.reg.PopUpLogin;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_reg_PopUpLoginWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_reg_PopUpLoginWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PopUpLogin.watcherSetupUtil = new _com_iv_sh_reg_PopUpLoginWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[1] = new PropertyWatcher("message",{"propertyChange":true},[bindings[1],bindings[2],bindings[3]],propertyGetter);
         watchers[2] = new PropertyWatcher("resourceManager",{"unused":true},[bindings[4],bindings[8],bindings[10],bindings[12],bindings[13],bindings[14]],propertyGetter);
         watchers[3] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","invalid_email"];
         },{"change":true},[bindings[4]],null);
         watchers[6] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","enter_your_email"];
         },{"change":true},[bindings[8]],null);
         watchers[8] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","your_password"];
         },{"change":true},[bindings[10]],null);
         watchers[11] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","remember_me"];
         },{"change":true},[bindings[12]],null);
         watchers[12] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","login"];
         },{"change":true},[bindings[13]],null);
         watchers[13] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","register"];
         },{"change":true},[bindings[14]],null);
         watchers[5] = new PropertyWatcher("errorEmail",{"propertyChange":true},[bindings[6],bindings[7]],propertyGetter);
         watchers[9] = new StaticPropertyWatcher("app",{"propertyChange":true},[bindings[11],bindings[15],bindings[16]],null);
         watchers[10] = new PropertyWatcher("noSave",{"propertyChange":true},[bindings[11]],null);
         watchers[14] = new PropertyWatcher("regInSite",{"propertyChange":true},[bindings[15]],null);
         watchers[15] = new PropertyWatcher("pageURL",{"propertyChange":true},[bindings[16]],null);
         watchers[1].updateParent(target);
         watchers[2].updateParent(target);
         watchers[3].parentWatcher = watchers[2];
         watchers[2].addChild(watchers[3]);
         watchers[6].parentWatcher = watchers[2];
         watchers[2].addChild(watchers[6]);
         watchers[8].parentWatcher = watchers[2];
         watchers[2].addChild(watchers[8]);
         watchers[11].parentWatcher = watchers[2];
         watchers[2].addChild(watchers[11]);
         watchers[12].parentWatcher = watchers[2];
         watchers[2].addChild(watchers[12]);
         watchers[13].parentWatcher = watchers[2];
         watchers[2].addChild(watchers[13]);
         watchers[5].updateParent(target);
         watchers[9].updateParent(SH);
         watchers[9].addChild(watchers[10]);
         watchers[9].addChild(watchers[14]);
         watchers[9].addChild(watchers[15]);
      }
   }
}

