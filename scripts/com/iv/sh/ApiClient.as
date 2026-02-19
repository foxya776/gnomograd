package com.iv.sh
{
   import com.iv.sh.ref.PopUpAddLivePoint;
   import com.iv.sh.ref.PopUpRef;
   
   public class ApiClient
   {
      
      public function ApiClient()
      {
         super();
      }
      
      public function onLogIn(param1:Object) : void
      {
         SH.app.onLogIn(param1);
      }
      
      public function updateLivePoint(param1:int) : void
      {
         if(SH.app.popuper.currentPopUp is PopUpAddLivePoint)
         {
            if(PopUpAddLivePoint(SH.app.popuper.currentPopUp).ref.id == SH.app.refId)
            {
               PopUpAddLivePoint(SH.app.popuper.currentPopUp).ref.livePoints = param1;
            }
         }
         else if(SH.app.popuper.currentPopUp is PopUpRef)
         {
            if(PopUpRef(SH.app.popuper.currentPopUp).ref.id == SH.app.refId)
            {
               PopUpRef(SH.app.popuper.currentPopUp).ref.livePoints = param1;
            }
         }
      }
      
      public function init(param1:int, param2:int, param3:Boolean = false, param4:Object = null) : void
      {
         var _loc5_:Array = null;
         SH.app.currentState = "normal";
         SH.app.regInSite = param3;
         if(param4)
         {
            SH.app.regPage = param4["regPage"];
            SH.app.loginPage = param4["loginPage"];
            SH.app.pageURL = param4["pageURL"];
            _loc5_ = SH.app.pageURL.split("code=");
            if(_loc5_.length > 1)
            {
               SH.app.logInByToken(_loc5_.pop());
               SH.app.pageURL = _loc5_.join("code=");
            }
         }
         _loc5_ = SH.app.pageURL.split("&code=");
         if(_loc5_.length > 1)
         {
            SH.app.pageURL = _loc5_[0];
         }
         _loc5_ = SH.app.pageURL.split("code=");
         if(_loc5_.length > 1)
         {
            SH.app.pageURL = _loc5_[0];
         }
         if(SH.app.pageURL.substr(-1) == "?")
         {
            SH.app.pageURL = SH.app.pageURL.substr(0,SH.app.pageURL.length - 1);
         }
         if(param1 != SH.app.version)
         {
            SH.app.preText = "У вас устаревшая версия приложения. Обновите страничку чтобы получить новую версию.";
         }
         else if(param2 == RefStatus.REF_OFF)
         {
            SH.app.preText = "Это приложение отключено администрацией";
         }
         else if(!param2)
         {
            SH.app.preText = "";
            SH.app.currentState = "noaccept";
         }
         else if(SH.app.rsloader.appLoader.app.id)
         {
            SH.app.loadGame(SH.app.rsloader.appLoader.app.id);
         }
         else if(Boolean(SH.app.parameters[App.APP1]) && Boolean(SH.app.parameters[App.APP2]) || Boolean(SH.app.parameters[App.APP1]) && Boolean(SH.app.parameters[App.APP3]) || Boolean(SH.app.parameters[App.APP2]) && Boolean(SH.app.parameters[App.APP3]))
         {
            SH.app.preText = "";
            SH.app.currentState = "select";
         }
         else if(SH.app.parameters[App.APP1])
         {
            SH.app.loadGame(App.APP1);
         }
         else if(SH.app.parameters[App.APP2])
         {
            SH.app.loadGame(App.APP2);
         }
         else if(SH.app.parameters[App.APP3])
         {
            SH.app.loadGame(App.APP3);
         }
         else
         {
            SH.app.loadGame(App.APP1);
         }
         if(Boolean(SH.app.realId) && Boolean(SH.app.authKey))
         {
            SH.app.logIn(SH.app.realId,SH.app.authKey,SH.app.authKey,SH.app.mode,true);
         }
      }
      
      public function refAccept() : void
      {
         SH.app.currentState = "select";
      }
      
      public function close() : void
      {
      }
   }
}

