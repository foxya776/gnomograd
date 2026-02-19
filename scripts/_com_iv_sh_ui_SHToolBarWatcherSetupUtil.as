package
{
   import com.iv.sh.App;
   import com.iv.sh.ui.SHToolBar;
   import mx.binding.ArrayElementWatcher;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_iv_sh_ui_SHToolBarWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _com_iv_sh_ui_SHToolBarWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SHToolBar.watcherSetupUtil = new _com_iv_sh_ui_SHToolBarWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[0] = new PropertyWatcher("resourceManager",{"unused":true},[bindings[0],bindings[2],bindings[4],bindings[6],bindings[8],bindings[10],bindings[18]],propertyGetter);
         watchers[1] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","login"];
         },{"change":true},[bindings[0]],null);
         watchers[4] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","logout"];
         },{"change":true},[bindings[2]],null);
         watchers[5] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","register"];
         },{"change":true},[bindings[4]],null);
         watchers[6] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","personal_account"];
         },{"change":true},[bindings[6]],null);
         watchers[8] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","partners"];
         },{"change":true},[bindings[8]],null);
         watchers[27] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","roulette_site"];
         },{"change":true},[bindings[18]],null);
         watchers[10] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return ["base","change_version"];
         },{"change":true},[bindings[10]],null);
         watchers[2] = new StaticPropertyWatcher("app",{"propertyChange":true},[bindings[1],bindings[3],bindings[5],bindings[7],bindings[9],bindings[11],bindings[12],bindings[13],bindings[14],bindings[15],bindings[16],bindings[17],bindings[19]],null);
         watchers[11] = new PropertyWatcher("rsloader",{"propertyChange":true},[bindings[12],bindings[13],bindings[14],bindings[15],bindings[16],bindings[17]],null);
         watchers[12] = new PropertyWatcher("appLoader",{"propertyChange":true},[bindings[12],bindings[13],bindings[14],bindings[15],bindings[16],bindings[17]],null);
         watchers[13] = new PropertyWatcher("app",{"propertyChange":true},[bindings[12],bindings[13],bindings[14],bindings[15],bindings[16],bindings[17]],null);
         watchers[14] = new PropertyWatcher("id",{"propertyChange":true},[bindings[12],bindings[13],bindings[14],bindings[15],bindings[16],bindings[17]],null);
         watchers[9] = new PropertyWatcher("admin",{"propertyChange":true},[bindings[9],bindings[11]],null);
         watchers[3] = new PropertyWatcher("userId",{"propertyChange":true},[bindings[1],bindings[3],bindings[5],bindings[7]],null);
         watchers[25] = new PropertyWatcher("regInSite",{"propertyChange":true},[bindings[17]],null);
         watchers[17] = new PropertyWatcher("parameters",null,[bindings[12],bindings[13],bindings[14],bindings[19]],null);
         watchers[18] = new ArrayElementWatcher(target,function():*
         {
            return App.APP2;
         },[bindings[12]]);
         watchers[20] = new ArrayElementWatcher(target,function():*
         {
            return App.APP1;
         },[bindings[13]]);
         watchers[23] = new ArrayElementWatcher(target,function():*
         {
            return App.APP3;
         },[bindings[14]]);
         watchers[29] = new ArrayElementWatcher(target,function():*
         {
            return App.APP3;
         },[bindings[19]]);
         watchers[21] = new PropertyWatcher("pageURL",{"propertyChange":true},[bindings[13],bindings[19]],null);
         watchers[26] = new PropertyWatcher("mode",{"propertyChange":true},[bindings[17]],null);
         watchers[0].updateParent(target);
         watchers[1].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[1]);
         watchers[4].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[4]);
         watchers[5].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[5]);
         watchers[6].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[6]);
         watchers[8].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[8]);
         watchers[27].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[27]);
         watchers[10].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[10]);
         watchers[2].updateParent(SH);
         watchers[2].addChild(watchers[11]);
         watchers[11].addChild(watchers[12]);
         watchers[12].addChild(watchers[13]);
         watchers[13].addChild(watchers[14]);
         watchers[2].addChild(watchers[9]);
         watchers[2].addChild(watchers[3]);
         watchers[2].addChild(watchers[25]);
         watchers[2].addChild(watchers[17]);
         watchers[18].arrayWatcher = watchers[17];
         watchers[17].addChild(watchers[18]);
         watchers[20].arrayWatcher = watchers[17];
         watchers[17].addChild(watchers[20]);
         watchers[23].arrayWatcher = watchers[17];
         watchers[17].addChild(watchers[23]);
         watchers[29].arrayWatcher = watchers[17];
         watchers[17].addChild(watchers[29]);
         watchers[2].addChild(watchers[21]);
         watchers[2].addChild(watchers[26]);
      }
   }
}

