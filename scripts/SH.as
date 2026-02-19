package
{
   import com.adobe.crypto.MD5;
   import com.iv.sh.Api;
   import com.iv.sh.MyApplication;
   import com.iv.sh.RSLoader;
   import com.iv.sh.WriteToAdmin;
   import com.iv.sh.reg.PopUpLogInSite;
   import com.iv.sh.reg.PopUpLogin;
   import com.iv.sh.reg.PopUpReg;
   import com.iv.sh.ui.GreenBut;
   import com.iv.sh.ui.SHToolBar;
   import com.iv.sh.ui.popup.PopUper;
   import com.iv.skins.CheckBoxSkin2;
   import com.iv.tooltip.SHToolTip;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.controls.Alert;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.managers.ToolTipManager;
   import mx.states.AddItems;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.CheckBox;
   import spark.components.Label;
   import spark.components.TextArea;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class SH extends MyApplication implements IBindingClient, IStateClient2
   {
      
      private static var _96801app:SH;
      
      public static var isFromCookie:Boolean;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {
         "contentGroup":false,
         "controlBarGroup":false
      };
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      public var _SH_Label1:Label;
      
      public var _SH_SelectServer1:SelectServer;
      
      public var _SH_VGroup1:VGroup;
      
      public var _SH_VGroup2:VGroup;
      
      private var _613505588acceptOffer:CheckBox;
      
      private var _179563077offertArea:TextArea;
      
      private var _393936295popuper:PopUper;
      
      private var _1001928300rsloader:RSLoader;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var loader:URLLoader;
      
      private var appLoader:Loader;
      
      public var api:Api;
      
      public var refId:String;
      
      public var gameId:String;
      
      public var params:String;
      
      public var localTest:Boolean = false;
      
      public var version:int = 1;
      
      private var _319200656preText:String = "Подключаюсь...";
      
      private var _607796817sessionId:String;
      
      private var _836030906userId:String;
      
      private var _803559328pageURL:String;
      
      private var _599029093needGoToReg:Boolean;
      
      private var _3346623meIP:String;
      
      private var _92668751admin:Boolean;
      
      private var _1040680226noSave:Boolean;
      
      private var _934972583realId:String;
      
      private var _1719360538isSpryPay:Boolean = true;
      
      private var _3357091mode:String;
      
      private var _843502656regInSite:Boolean;
      
      private var _646543465authKey:String;
      
      public var instId:String;
      
      private var _1719408232loginPage:String;
      
      private var _1085351235regPage:String;
      
      public var mac:String;
      
      internal var isAutoStart:Boolean;
      
      mx_internal var _SH_StylesInit_done:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SH()
      {
         var watchers:Array;
         var _SH_Label1_factory:DeferredInstanceFromFunction;
         var _SH_SelectServer1_factory:DeferredInstanceFromFunction;
         var _SH_VGroup1_factory:DeferredInstanceFromFunction;
         var _SH_VGroup2_factory:DeferredInstanceFromFunction;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.loader = new URLLoader();
         this.appLoader = new Loader();
         this.api = new Api();
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._SH_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_SHWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SH[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SH_Array2_c);
         this.currentState = "initialize";
         this.addEventListener("initialize",this.___SH_MyApplication1_initialize);
         this.addEventListener("creationComplete",this.___SH_MyApplication1_creationComplete);
         _SH_Label1_factory = new DeferredInstanceFromFunction(this._SH_Label1_i);
         _SH_SelectServer1_factory = new DeferredInstanceFromFunction(this._SH_SelectServer1_i);
         _SH_VGroup1_factory = new DeferredInstanceFromFunction(this._SH_VGroup1_i);
         _SH_VGroup2_factory = new DeferredInstanceFromFunction(this._SH_VGroup2_i);
         states = [new State({
            "name":"initialize",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_SH_Label1_factory,
               "destination":null,
               "position":"first"
            })]
         }),new State({
            "name":"select",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_SH_SelectServer1_factory,
               "destination":null,
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_SH_VGroup1_factory,
               "destination":null,
               "position":"first"
            })]
         }),new State({
            "name":"normal",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_SH_VGroup1_factory,
               "destination":null,
               "position":"first"
            })]
         }),new State({
            "name":"noaccept",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_SH_VGroup2_factory,
               "destination":null,
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_SH_VGroup1_factory,
               "destination":null,
               "position":"first"
            })]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SH._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public static function get app() : SH
      {
         return SH._96801app;
      }
      
      public static function set app(param1:SH) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = SH._96801app;
         if(_loc2_ !== param1)
         {
            SH._96801app = param1;
            _loc3_ = SH.staticEventDispatcher;
            if(_loc3_ !== null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(SH,"app",_loc2_,param1));
            }
         }
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_SH_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function startApp() : void
      {
         var _loc1_:SharedObject = null;
         app = this;
         Security.allowDomain("*");
         try
         {
            _loc1_ = SharedObject.getLocal("sh");
            this.mac = _loc1_.data["stats"];
            if(!this.mac)
            {
               _loc1_.data["stats"] = this.mac = MD5.hash(String(Math.random()));
            }
         }
         catch(error:Error)
         {
         }
      }
      
      public function showGuest() : void
      {
         var _loc1_:PopUpLogInSite = null;
         var _loc2_:PopUpLogin = null;
         if(this.regInSite)
         {
            _loc1_ = new PopUpLogInSite();
            _loc1_.message = resourceManager.getString("base","feature_is_only_available_to_registered_users");
            SH.app.popuper.show(_loc1_);
         }
         else
         {
            _loc2_ = new PopUpLogin();
            _loc2_.message = resourceManager.getString("base","feature_is_only_available_to_registered_users");
            SH.app.popuper.show(_loc2_);
         }
      }
      
      private function onInitialize(param1:Event) : void
      {
         this.refId = parameters["r"] || "d5395a80699113d6d76f509dfb5fdaa1";
         this.gameId = parameters["g"];
         this.params = parameters["p"];
         this.instId = parameters["i"] || this.refId;
         var _loc2_:SharedObject = SharedObject.getLocal("sh_auth");
         var _loc3_:Number = new Date().getTime();
         var _loc4_:Number = Number(_loc2_.data["time"]);
         if(isNaN(_loc4_) || _loc3_ - _loc4_ > 604800000)
         {
            SH.app.clearLoginData();
            this.realId = parameters["uid"];
            this.authKey = parameters["key"];
            this.mode = parameters["mode"];
         }
         else
         {
            _loc2_.data["time"] = _loc3_;
            _loc2_.flush();
            this.realId = _loc2_.data["realId"];
            this.authKey = _loc2_.data["hash"];
            this.mode = _loc2_.data["mode"];
            this.noSave = _loc2_.data["noSave"];
         }
      }
      
      private function onApplicationComplete(param1:Event) : void
      {
         var _loc2_:SharedObject = null;
         ToolTipManager.showDelay = 500;
         ToolTipManager.scrubDelay = 0;
         ToolTipManager.toolTipClass = SHToolTip;
         if(this.localTest)
         {
            this.api.connect("178.208.75.147/sh/_definst_");
         }
         else
         {
            this.api.connect("178.208.94.32/sh/_definst_");
         }
         try
         {
            _loc2_ = SharedObject.getLocal("hc");
            if(_loc2_.data["lang"])
            {
               resourceManager.localeChain = [_loc2_.data["lang"],"ru_RU"];
            }
         }
         catch(error:Error)
         {
         }
      }
      
      public function saveLoginData(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:SharedObject = null;
         try
         {
            _loc4_ = SharedObject.getLocal("sh_auth");
            _loc4_.data["realId"] = param1;
            _loc4_.data["hash"] = param2;
            _loc4_.data["mode"] = param3;
            _loc4_.data["time"] = new Date().getTime();
            _loc4_.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function clearLoginData() : void
      {
         var _loc1_:SharedObject = null;
         try
         {
            _loc1_ = SharedObject.getLocal("sh_auth");
            delete _loc1_.data["realId"];
            delete _loc1_.data["hash"];
            delete _loc1_.data["time"];
            _loc1_.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function logOut() : void
      {
         this.realId = null;
         this.authKey = null;
         this.sessionId = null;
         this.userId = null;
         this.admin = false;
         this.clearLoginData();
         this.popuper.hide();
         this.rsloader.appLoader.app.logOut();
      }
      
      public function logIn(param1:String, param2:String, param3:String, param4:String, param5:Boolean = false) : void
      {
         this.isAutoStart = param5;
         this.realId = param1;
         this.authKey = param2;
         this.api.connection.call("logIn",new Responder(this.onLogIn),param1,param2,param3,param4);
      }
      
      public function logInByToken(param1:String) : void
      {
         this.api.connection.call("logInByAuth2VK",null,param1);
      }
      
      public function onLogIn(param1:Object) : void
      {
         if(param1 == 1 || param1 == 2 || param1 == 3)
         {
            this.realId = null;
            this.authKey = null;
            this.clearLoginData();
            Alert.show("Похоже у вас какие-то проблемы с интернетом попробуйте зайти позже.");
         }
         else if(param1 != 4)
         {
            if(!param1["auth"] && !this.isAutoStart)
            {
               this.realId = null;
               this.authKey = null;
               this.clearLoginData();
               Alert.show("Неверный email или пароль");
            }
            else if(param1["auth"])
            {
               this.sessionId = param1["session"];
               this.userId = param1["userId"];
               this.admin = param1["admin"];
               if(param1.hasOwnProperty("authKey"))
               {
                  this.authKey = param1["authKey"];
               }
               if(param1.hasOwnProperty("realId"))
               {
                  this.realId = param1["realId"];
               }
               if(param1.hasOwnProperty("mode"))
               {
                  this.mode = param1["mode"];
               }
               if(SH.app.noSave)
               {
                  this.clearLoginData();
               }
               else
               {
                  this.saveLoginData(this.realId,this.authKey,this.mode);
               }
               if(this.popuper.currentPopUp is PopUpLogin || this.popuper.currentPopUp is PopUpReg)
               {
                  this.popuper.hide();
               }
               if(this.needGoToReg)
               {
                  this.needGoToReg = false;
                  navigateToURL(new URLRequest("http://vreale.tv/reg"),"_self");
               }
               else
               {
                  this.rsloader.appLoader.app.logIn();
               }
            }
         }
      }
      
      protected function greenbut1_clickHandler(param1:MouseEvent) : void
      {
         if(this.acceptOffer.selected)
         {
            if(SH.app.admin)
            {
               SH.app.api.connection.call("refAccept",new Responder(this.onRefAccept),SH.app.refId);
            }
            else
            {
               SH.app.api.connection.call("getPayRefUrl",new Responder(this.onGetPayRefUrl));
            }
         }
         else
         {
            Alert.show("Для подключения приложения вы должны ознакомиться и согласиться с условиями публичной оферты лицензионного/сублицензионного договора");
         }
      }
      
      private function onRefAccept(param1:int) : void
      {
         if(param1 == 1)
         {
            Alert.show("У вас недостаточно прав");
         }
      }
      
      private function onLoadOffert(param1:Event) : void
      {
         this.offertArea.text = URLLoader(param1.target).data;
      }
      
      private function onGetPayRefUrl(param1:String) : void
      {
         var _loc2_:URLRequest = null;
         var _loc3_:URLVariables = null;
         if(param1 == "1")
         {
            Alert.show("Приложение уже подключено");
         }
         else if(param1 == "2")
         {
            Alert.show("Приложение заблокировано");
         }
         else if(SH.app.refId)
         {
            _loc2_ = new URLRequest("http://sprypay.ru/sppi/");
            _loc2_.method = URLRequestMethod.POST;
            _loc3_ = new URLVariables();
            _loc3_["spShopId"] = 5133;
            _loc3_["spShopPaymentId"] = String(new Date().getTime()).substr(-1,12);
            _loc3_["spAmount"] = 30;
            _loc3_["spCurrency"] = "rur";
            _loc3_["spPurpose"] = "Активация приложения";
            if(SH.app.realId)
            {
               _loc3_["spUserEmail"] = SH.app.realId;
            }
            _loc3_["spUserData_aid"] = this.rsloader.appLoader.app.id;
            _loc3_["spUserData_uid"] = 1;
            _loc3_["spUserData_rid"] = SH.app.refId;
            _loc3_["spUserData_fid"] = 1;
            _loc3_["spUserData_iid"] = 1;
            _loc2_.data = _loc3_;
            navigateToURL(_loc2_,"_blank");
         }
      }
      
      public function loadGame(param1:String) : void
      {
         currentState = "normal";
         this.rsloader.load(param1);
      }
      
      private function _SH_Array2_c() : Array
      {
         return [this._SH_WriteToAdmin1_c(),this._SH_PopUper1_i()];
      }
      
      private function _SH_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("color",7829367);
         _loc1_.setStyle("paddingLeft",20);
         _loc1_.setStyle("paddingRight",20);
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "_SH_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SH_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_SH_Label1",this._SH_Label1);
         return _loc1_;
      }
      
      private function _SH_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 4;
         _loc1_.paddingRight = 4;
         _loc1_.paddingBottom = 4;
         _loc1_.paddingTop = 4;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._SH_SHToolBar1_c(),this._SH_RSLoader1_i()];
         _loc1_.id = "_SH_VGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SH_VGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_SH_VGroup1",this._SH_VGroup1);
         return _loc1_;
      }
      
      private function _SH_SHToolBar1_c() : SHToolBar
      {
         var _loc1_:SHToolBar = new SHToolBar();
         _loc1_.height = 24;
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 2;
         _loc1_.paddingLeft = 6;
         _loc1_.paddingRight = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SH_RSLoader1_i() : RSLoader
      {
         var _loc1_:RSLoader = new RSLoader();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "rsloader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rsloader = _loc1_;
         BindingManager.executeBindings(this,"rsloader",this.rsloader);
         return _loc1_;
      }
      
      private function _SH_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingRight = 8;
         _loc1_.paddingLeft = 8;
         _loc1_.paddingTop = 26;
         _loc1_.gap = 6;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SH_TextArea1_i(),this._SH_CheckBox1_i(),this._SH_Rect1_c(),this._SH_Label2_c(),this._SH_GreenBut1_c()];
         _loc1_.id = "_SH_VGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SH_VGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_SH_VGroup2",this._SH_VGroup2);
         return _loc1_;
      }
      
      private function _SH_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.maxHeight = 300;
         _loc1_.text = "Загружаю договор...";
         _loc1_.editable = false;
         _loc1_.focusEnabled = false;
         _loc1_.setStyle("textAlign","center");
         _loc1_.addEventListener("initialize",this.__offertArea_initialize);
         _loc1_.id = "offertArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.offertArea = _loc1_;
         BindingManager.executeBindings(this,"offertArea",this.offertArea);
         return _loc1_;
      }
      
      public function __offertArea_initialize(param1:FlexEvent) : void
      {
         var _loc2_:URLLoader = new URLLoader();
         _loc2_.addEventListener(Event.COMPLETE,this.onLoadOffert);
         _loc2_.load(new URLRequest("http://vreale.tv/offer_p.txt"));
      }
      
      private function _SH_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.buttonMode = true;
         _loc1_.percentWidth = 100;
         _loc1_.label = "Я ознакомился с публичной офертой лицензионного/сублицензионного договора и полностью согласен с ее условиями";
         _loc1_.setStyle("skinClass",CheckBoxSkin2);
         _loc1_.id = "acceptOffer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptOffer = _loc1_;
         BindingManager.executeBindings(this,"acceptOffer",this.acceptOffer);
         return _loc1_;
      }
      
      private function _SH_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.height = 4;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _SH_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Стоимость активации 30 рублей, они поступят на ваш счёт.";
         _loc1_.maxWidth = 400;
         _loc1_.setStyle("color",7829367);
         _loc1_.setStyle("textAlign","center");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SH_GreenBut1_c() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.title = "Активировать приложение";
         _loc1_.addEventListener("click",this.___SH_GreenBut1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SH_GreenBut1_click(param1:MouseEvent) : void
      {
         this.greenbut1_clickHandler(param1);
      }
      
      private function _SH_SelectServer1_i() : SelectServer
      {
         var _loc1_:SelectServer = new SelectServer();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_SH_SelectServer1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SH_SelectServer1 = _loc1_;
         BindingManager.executeBindings(this,"_SH_SelectServer1",this._SH_SelectServer1);
         return _loc1_;
      }
      
      private function _SH_WriteToAdmin1_c() : WriteToAdmin
      {
         var _loc1_:WriteToAdmin = new WriteToAdmin();
         _loc1_.right = 10;
         _loc1_.top = 11;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SH_PopUper1_i() : PopUper
      {
         var _loc1_:PopUper = new PopUper();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "popuper";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.popuper = _loc1_;
         BindingManager.executeBindings(this,"popuper",this.popuper);
         return _loc1_;
      }
      
      public function ___SH_MyApplication1_initialize(param1:FlexEvent) : void
      {
         this.onInitialize(param1);
      }
      
      public function ___SH_MyApplication1_creationComplete(param1:FlexEvent) : void
      {
         this.onApplicationComplete(param1);
      }
      
      private function _SH_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_SH_Label1.text","preText");
         return _loc1_;
      }
      
      mx_internal function _SH_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_SH_StylesInit_done)
         {
            return;
         }
         mx_internal::_SH_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.TextArea",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.TextArea");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.focusColor = 16737792;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.TextInput",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.TextInput");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.focusColor = 16737792;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("com.iv.sh.ui.TextInputDefault",conditions,selector);
         style = styleManager.getStyleDeclaration("com.iv.sh.ui.TextInputDefault");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.focusColor = 16737792;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("com.iv.sh.ui.Link",conditions,selector);
         style = styleManager.getStyleDeclaration("com.iv.sh.ui.Link");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 4548765;
               this.fontSize = 13;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","smallText");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".smallText");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 8598302;
               this.fontSize = 12;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","baseText");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".baseText");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 11747072;
               this.fontSize = 13;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","baseTextPassiv");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".baseTextPassiv");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 8274230;
               this.fontSize = 13;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","legionLevel");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".legionLevel");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 13369446;
               this.fontSize = 13;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","bigText");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".bigText");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 11747072;
               this.fontSize = 24;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","bigTextPassiv");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".bigTextPassiv");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 8274230;
               this.fontSize = 24;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","bigLevel");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".bigLevel");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 13369446;
               this.fontSize = 24;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","midText");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".midText");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 11747072;
               this.fontSize = 16;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","midTextPassiv");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".midTextPassiv");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 8274230;
               this.fontSize = 16;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","midLevel");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".midLevel");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 13369446;
               this.fontSize = 16;
            };
         }
         styleManager.initProtoChainRoots();
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptOffer() : CheckBox
      {
         return this._613505588acceptOffer;
      }
      
      public function set acceptOffer(param1:CheckBox) : void
      {
         var _loc2_:Object = this._613505588acceptOffer;
         if(_loc2_ !== param1)
         {
            this._613505588acceptOffer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptOffer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get offertArea() : TextArea
      {
         return this._179563077offertArea;
      }
      
      public function set offertArea(param1:TextArea) : void
      {
         var _loc2_:Object = this._179563077offertArea;
         if(_loc2_ !== param1)
         {
            this._179563077offertArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offertArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popuper() : PopUper
      {
         return this._393936295popuper;
      }
      
      public function set popuper(param1:PopUper) : void
      {
         var _loc2_:Object = this._393936295popuper;
         if(_loc2_ !== param1)
         {
            this._393936295popuper = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popuper",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rsloader() : RSLoader
      {
         return this._1001928300rsloader;
      }
      
      public function set rsloader(param1:RSLoader) : void
      {
         var _loc2_:Object = this._1001928300rsloader;
         if(_loc2_ !== param1)
         {
            this._1001928300rsloader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rsloader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get preText() : String
      {
         return this._319200656preText;
      }
      
      public function set preText(param1:String) : void
      {
         var _loc2_:Object = this._319200656preText;
         if(_loc2_ !== param1)
         {
            this._319200656preText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sessionId() : String
      {
         return this._607796817sessionId;
      }
      
      public function set sessionId(param1:String) : void
      {
         var _loc2_:Object = this._607796817sessionId;
         if(_loc2_ !== param1)
         {
            this._607796817sessionId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sessionId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userId() : String
      {
         return this._836030906userId;
      }
      
      public function set userId(param1:String) : void
      {
         var _loc2_:Object = this._836030906userId;
         if(_loc2_ !== param1)
         {
            this._836030906userId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageURL() : String
      {
         return this._803559328pageURL;
      }
      
      public function set pageURL(param1:String) : void
      {
         var _loc2_:Object = this._803559328pageURL;
         if(_loc2_ !== param1)
         {
            this._803559328pageURL = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageURL",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needGoToReg() : Boolean
      {
         return this._599029093needGoToReg;
      }
      
      public function set needGoToReg(param1:Boolean) : void
      {
         var _loc2_:Object = this._599029093needGoToReg;
         if(_loc2_ !== param1)
         {
            this._599029093needGoToReg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needGoToReg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get meIP() : String
      {
         return this._3346623meIP;
      }
      
      public function set meIP(param1:String) : void
      {
         var _loc2_:Object = this._3346623meIP;
         if(_loc2_ !== param1)
         {
            this._3346623meIP = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"meIP",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get admin() : Boolean
      {
         return this._92668751admin;
      }
      
      public function set admin(param1:Boolean) : void
      {
         var _loc2_:Object = this._92668751admin;
         if(_loc2_ !== param1)
         {
            this._92668751admin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"admin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get noSave() : Boolean
      {
         return this._1040680226noSave;
      }
      
      public function set noSave(param1:Boolean) : void
      {
         var _loc2_:Object = this._1040680226noSave;
         if(_loc2_ !== param1)
         {
            this._1040680226noSave = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noSave",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get realId() : String
      {
         return this._934972583realId;
      }
      
      public function set realId(param1:String) : void
      {
         var _loc2_:Object = this._934972583realId;
         if(_loc2_ !== param1)
         {
            this._934972583realId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSpryPay() : Boolean
      {
         return this._1719360538isSpryPay;
      }
      
      public function set isSpryPay(param1:Boolean) : void
      {
         var _loc2_:Object = this._1719360538isSpryPay;
         if(_loc2_ !== param1)
         {
            this._1719360538isSpryPay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSpryPay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mode() : String
      {
         return this._3357091mode;
      }
      
      public function set mode(param1:String) : void
      {
         var _loc2_:Object = this._3357091mode;
         if(_loc2_ !== param1)
         {
            this._3357091mode = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mode",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get regInSite() : Boolean
      {
         return this._843502656regInSite;
      }
      
      public function set regInSite(param1:Boolean) : void
      {
         var _loc2_:Object = this._843502656regInSite;
         if(_loc2_ !== param1)
         {
            this._843502656regInSite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"regInSite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get authKey() : String
      {
         return this._646543465authKey;
      }
      
      public function set authKey(param1:String) : void
      {
         var _loc2_:Object = this._646543465authKey;
         if(_loc2_ !== param1)
         {
            this._646543465authKey = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"authKey",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginPage() : String
      {
         return this._1719408232loginPage;
      }
      
      public function set loginPage(param1:String) : void
      {
         var _loc2_:Object = this._1719408232loginPage;
         if(_loc2_ !== param1)
         {
            this._1719408232loginPage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginPage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get regPage() : String
      {
         return this._1085351235regPage;
      }
      
      public function set regPage(param1:String) : void
      {
         var _loc2_:Object = this._1085351235regPage;
         if(_loc2_ !== param1)
         {
            this._1085351235regPage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"regPage",_loc2_,param1));
            }
         }
      }
   }
}

