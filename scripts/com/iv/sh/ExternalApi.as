package com.iv.sh
{
   import com.adobe.crypto.MD5;
   import com.iv.sh.reg.PopUpLogInSite;
   import com.iv.sh.reg.PopUpLogin;
   import com.iv.sh.reg.PopUpStopToGuest;
   import com.iv.sh.support.EmailValidator;
   import flash.display.Loader;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   
   public class ExternalApi extends Loader
   {
      
      public var logIn:Function;
      
      public var logOut:Function;
      
      private var _96801app:App = new App();
      
      public function ExternalApi()
      {
         super();
      }
      
      public function initApp() : void
      {
         this.app.logIn();
      }
      
      public function changeLocale(param1:String) : void
      {
         ResourceManager.getInstance().localeChain = [param1,"ru_RU"];
         var _loc2_:SharedObject = SharedObject.getLocal("hc");
         _loc2_.data["lang"] = param1;
      }
      
      public function addPayRequest() : void
      {
         SH.app.api.connection.call("addPayRealsRequest",null);
      }
      
      public function removePayRequest() : void
      {
         SH.app.api.connection.call("removePayRealsRequest",null);
      }
      
      public function showLogIn(param1:String = "") : void
      {
         var _loc2_:PopUpLogInSite = null;
         var _loc3_:PopUpLogin = null;
         if(SH.app.regInSite)
         {
            _loc2_ = new PopUpLogInSite();
            _loc2_.message = param1;
            SH.app.popuper.show(_loc2_);
         }
         else
         {
            _loc3_ = new PopUpLogin();
            _loc3_.message = param1;
            SH.app.popuper.show(_loc3_);
         }
      }
      
      public function showStopToGuest() : void
      {
         SH.app.popuper.show(new PopUpStopToGuest());
      }
      
      public function showPaymentDialog(param1:int, param2:String = null, param3:int = 1, param4:String = null) : void
      {
         var _loc5_:URLRequest = null;
         var _loc6_:URLVariables = null;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         if(Boolean(SH.app.realId) && Boolean(SH.app.refId))
         {
            if(param3 == 21)
            {
               _loc5_ = new URLRequest("https://merchant.roboxchange.com/Index.aspx");
               _loc5_.method = URLRequestMethod.POST;
               _loc6_ = new URLVariables();
               _loc6_["MrchLogin"] = "ivaskov";
               _loc7_ = 0;
               _loc6_["InvId"] = _loc7_;
               _loc6_["OutSum"] = param1;
               if(this.app.id == "mc")
               {
                  _loc6_["Desc"] = "Покупка рубинов";
               }
               else
               {
                  _loc6_["Desc"] = "Покупка монет";
               }
               if(EmailValidator.validate(SH.app.realId))
               {
                  _loc6_["Email"] = SH.app.realId;
               }
               _loc6_["SHP_aid"] = this.app.id;
               _loc6_["SHP_uid"] = param2 || SH.app.userId;
               _loc6_["SHP_rid"] = SH.app.refId;
               _loc6_["SHP_fid"] = SH.app.userId;
               _loc6_["SHP_iid"] = param4 || SH.app.instId;
               _loc6_["SHP_t"] = param3;
               _loc8_ = ["SHP_aid","SHP_uid","SHP_rid","SHP_fid","SHP_iid","SHP_t"];
               _loc8_.sort();
               _loc9_ = "ivaskov:" + param1 + ":" + _loc7_ + ":ADdf45234fmjsd26";
               for each(_loc10_ in _loc8_)
               {
                  _loc9_ += ":" + _loc10_ + "=" + _loc6_[_loc10_];
               }
               _loc6_["SignatureValue"] = MD5.hash(_loc9_);
               _loc5_.data = _loc6_;
               navigateToURL(_loc5_,"_blank");
            }
            else if(SH.app.isSpryPay)
            {
               _loc5_ = new URLRequest("http://sprypay.ru/sppi/");
               _loc5_.method = URLRequestMethod.POST;
               _loc6_ = new URLVariables();
               _loc6_["spShopId"] = 5133;
               _loc6_["spShopPaymentId"] = String(new Date().getTime()).substr(-1,12);
               _loc6_["spAmount"] = param1;
               _loc6_["spCurrency"] = "rur";
               if(param3 == 3)
               {
                  _loc6_["spPurpose"] = "Покупка рубинов";
               }
               else if(param3 == 2)
               {
                  _loc6_["spPurpose"] = "Покупка реалов";
               }
               else
               {
                  _loc6_["spPurpose"] = "Покупка монет";
               }
               if(EmailValidator.validate(SH.app.realId))
               {
                  _loc6_["spUserEmail"] = SH.app.realId;
               }
               _loc6_["spUserData_aid"] = this.app.id;
               _loc6_["spUserData_uid"] = param2 || SH.app.userId;
               _loc6_["spUserData_rid"] = SH.app.refId;
               _loc6_["spUserData_fid"] = SH.app.userId;
               _loc6_["spUserData_iid"] = param4 || SH.app.instId;
               _loc6_["spUserData_t"] = param3;
               _loc5_.data = _loc6_;
               navigateToURL(_loc5_,"_blank");
            }
         }
      }
      
      private function onGetPayUrl(param1:String) : void
      {
         if(param1 == "1")
         {
            this.showStopToGuest();
         }
         else
         {
            navigateToURL(new URLRequest(param1),"realshowpay");
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get app() : App
      {
         return this._96801app;
      }
      
      public function set app(param1:App) : void
      {
         var _loc2_:Object = this._96801app;
         if(_loc2_ !== param1)
         {
            this._96801app = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"app",_loc2_,param1));
            }
         }
      }
   }
}

