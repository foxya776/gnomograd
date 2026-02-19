package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _SelectServerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _SelectServerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SelectServer.watcherSetupUtil = new _SelectServerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[0] = new PropertyWatcher("text",{"propertyChange":true},[bindings[0],bindings[1],bindings[2]],propertyGetter);
         watchers[1] = new PropertyWatcher("resourceManager",{"unused":true},[bindings[3],bindings[4]],propertyGetter);
         watchers[2] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","enter_in_roulette"];
         },{"change":true},[bindings[3]],null);
         watchers[3] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","roulette"];
         },{"change":true},[bindings[4]],null);
         watchers[0].updateParent(target);
         watchers[1].updateParent(target);
         watchers[2].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[2]);
         watchers[3].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[3]);
      }
   }
}

