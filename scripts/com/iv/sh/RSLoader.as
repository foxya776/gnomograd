package com.iv.sh
{
   import flash.events.Event;
   import flash.net.Responder;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import mx.core.UIComponent;
   import mx.events.PropertyChangeEvent;
   import mx.utils.URLUtil;
   
   public class RSLoader extends UIComponent
   {
      
      private var loader:URLLoader = new URLLoader();
      
      private var _1294317972appLoader:ExternalApi = new ExternalApi();
      
      private var created:Boolean;
      
      public function RSLoader()
      {
         super();
         addChild(this.appLoader);
      }
      
      public function load(param1:String) : void
      {
         if(this.appLoader.app.id)
         {
            try
            {
               this.appLoader.content["application"].connector.stop();
               this.appLoader.content["application"].vconnector.stop();
            }
            catch(e:Error)
            {
            }
         }
         this.appLoader.app.id = param1;
         SH.app.api.connection.call("getApp",new Responder(this.onGetApp),param1);
      }
      
      private function onGetApp(param1:Object) : void
      {
         var _loc6_:String = null;
         this.appLoader.app.importFMS(param1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         var _loc2_:LoaderContext = new LoaderContext();
         var _loc3_:String = "";
         var _loc4_:URLRequest = new URLRequest(this.appLoader.app.url);
         var _loc5_:URLVariables = new URLVariables();
         _loc2_.parameters = {};
         if(SH.app.realId)
         {
            _loc2_.parameters.realId = SH.app.realId;
         }
         if(SH.app.sessionId)
         {
            _loc2_.parameters.session_id = SH.app.sessionId;
         }
         if(SH.app.mode)
         {
            _loc2_.parameters.mode = SH.app.mode;
         }
         _loc2_.parameters.i = SH.app.parameters[this.appLoader.app.id] || SH.app.instId;
         _loc2_.parameters.v = this.appLoader.app.version.toString();
         for(_loc6_ in SH.app.parameters)
         {
            if(_loc6_ != "i" && _loc6_ != App.APP1 && _loc6_ != App.APP2 && _loc6_ != App.APP3)
            {
               _loc2_.parameters[_loc6_] = SH.app.parameters[_loc6_];
            }
         }
         _loc2_.applicationDomain = new ApplicationDomain();
         _loc4_.data = _loc5_;
         _loc4_.method = URLRequestMethod.GET;
         if(SH.app.localTest)
         {
            _loc3_ = "vreale.tv";
         }
         else
         {
            _loc2_.securityDomain = SecurityDomain.currentDomain;
            _loc3_ = URLUtil.getServerNameWithPort(SH.app.loaderInfo.url);
         }
         this.appLoader.unloadAndStop(true);
         this.appLoader.load(_loc4_,_loc2_);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         if(this.created)
         {
            this.appLoader.x = 0;
            this.appLoader.y = 0;
            this.appLoader.content["application"].width = param1;
            this.appLoader.content["application"].height = param2;
         }
         else if(this.appLoader.content)
         {
            this.appLoader.x = 0;
            this.appLoader.y = 0;
            if(this.appLoader.content["application"])
            {
               this.appLoader.content["application"].width = width;
               this.appLoader.content["application"].height = height;
            }
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.appLoader.content)
         {
            if(this.appLoader.content["application"])
            {
               this.appLoader.content["application"].width = width;
               this.appLoader.content["application"].height = height;
            }
            if(Boolean(this.appLoader.content["application"]) && Boolean(this.appLoader.content["application"].initialized))
            {
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               this.appLoader.x = 0;
               this.appLoader.y = 0;
            }
         }
         else
         {
            this.appLoader.x = 0;
            this.appLoader.y = 0;
            if(Boolean(this.appLoader.content) && Boolean(this.appLoader.content["application"]))
            {
               this.appLoader.content["application"].width = width;
               this.appLoader.content["application"].height = height;
               this.created = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get appLoader() : ExternalApi
      {
         return this._1294317972appLoader;
      }
      
      public function set appLoader(param1:ExternalApi) : void
      {
         var _loc2_:Object = this._1294317972appLoader;
         if(_loc2_ !== param1)
         {
            this._1294317972appLoader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"appLoader",_loc2_,param1));
            }
         }
      }
   }
}

