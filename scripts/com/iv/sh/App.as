package com.iv.sh
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.net.Responder;
   import mx.events.PropertyChangeEvent;
   
   public class App implements IEventDispatcher
   {
      
      public static const APP1:String = "live2";
      
      public static const APP2:String = "mc";
      
      public static const APP3:String = "roulette";
      
      private var _3355id:String;
      
      private var _110371416title:String;
      
      private var _147152236userKey:String;
      
      private var _116079url:String;
      
      private var _351608024version:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function App()
      {
         super();
      }
      
      public static function getTitle(param1:String) : String
      {
         if(param1 == APP1)
         {
            return "Реалити шоу онлайн";
         }
         if(param1 == APP2)
         {
            return "Реальный город";
         }
         return "Чат рулетка";
      }
      
      public function importFMS(param1:Object) : void
      {
         this.url = param1["url"];
         this.version = param1["version"];
         this.title = param1["title"];
      }
      
      public function logIn() : void
      {
         if(this.id == App.APP1)
         {
            if(Boolean(SH.app.sessionId) && Boolean(SH.app.rsloader.appLoader.logIn))
            {
               SH.app.rsloader.appLoader.logIn(SH.app.sessionId);
            }
         }
         else if(this.id == App.APP2)
         {
            if(this.userKey)
            {
               this.onGetAppKey(this.userKey);
            }
            else
            {
               SH.app.api.connection.call("getAppKey",new Responder(this.onGetAppKey),this.id);
            }
         }
         else if(this.id == App.APP3)
         {
            if(Boolean(SH.app.realId) && Boolean(SH.app.authKey) && Boolean(SH.app.rsloader.appLoader.logIn))
            {
               if(SH.app.mode == "ba")
               {
                  SH.app.api.connection.call("getAppKey",new Responder(this.onGetAppKey),this.id);
               }
               else
               {
                  SH.app.rsloader.appLoader.logIn(SH.app.realId,SH.app.authKey,SH.app.mode);
               }
            }
         }
      }
      
      public function logOut() : void
      {
         this.userKey = null;
         if(Boolean(SH.app.rsloader.appLoader.logOut))
         {
            SH.app.rsloader.appLoader.logOut();
         }
      }
      
      private function onGetAppKey(param1:String) : void
      {
         this.userKey = param1;
         if(Boolean(param1) && Boolean(SH.app.rsloader.appLoader.logIn))
         {
            if(this.id == App.APP3)
            {
               if(SH.app.realId)
               {
                  SH.app.rsloader.appLoader.logIn(SH.app.realId,this.userKey,SH.app.mode);
               }
            }
            else
            {
               SH.app.rsloader.appLoader.logIn(SH.app.userId,param1);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : String
      {
         return this._3355id;
      }
      
      public function set id(param1:String) : void
      {
         var _loc2_:Object = this._3355id;
         if(_loc2_ !== param1)
         {
            this._3355id = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userKey() : String
      {
         return this._147152236userKey;
      }
      
      public function set userKey(param1:String) : void
      {
         var _loc2_:Object = this._147152236userKey;
         if(_loc2_ !== param1)
         {
            this._147152236userKey = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userKey",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set url(param1:String) : void
      {
         var _loc2_:Object = this._116079url;
         if(_loc2_ !== param1)
         {
            this._116079url = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get version() : int
      {
         return this._351608024version;
      }
      
      public function set version(param1:int) : void
      {
         var _loc2_:Object = this._351608024version;
         if(_loc2_ !== param1)
         {
            this._351608024version = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"version",_loc2_,param1));
            }
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this._bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this._bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.willTrigger(param1);
      }
   }
}

