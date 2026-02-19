package com.iv.sh
{
   import com.iv.sh.utils.Reconnecter;
   import flash.events.IOErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.NetConnection;
   import mx.controls.Alert;
   
   public class Api
   {
      
      private var _hash:Object = new Object();
      
      private var _url:String;
      
      public var connection:NetConnection;
      
      public var _connected:Boolean;
      
      private var reconnecter:Reconnecter;
      
      public function Api()
      {
         this.reconnecter = new Reconnecter(5000,this.onReconnectError);
         super();
         this.connection = new NetConnection();
         this.connection.addEventListener(NetStatusEvent.NET_STATUS,this.netStatusHandler);
         this.connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
         this.connection.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.connection.addEventListener(IOErrorEvent.NETWORK_ERROR,this.onNetworkError);
         this.connection.client = new ApiClient();
      }
      
      public function onReconnectError() : void
      {
         SH.app.logOut();
         Alert.show("Попробуйте обновить страницу или зайти чуть позже ");
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         this.reconnect();
      }
      
      public function onNetworkError(param1:IOErrorEvent) : void
      {
         this.reconnect();
      }
      
      private function reconnect() : void
      {
         SH.app.preText = "Подключаюсь...";
         this.reconnecter.reconnect(this.onReconnect);
      }
      
      public function connect(param1:String, param2:Boolean = false) : void
      {
         this._url = param1;
         if(param2)
         {
            this.connection.connect("rtmpte://" + param1,SH.app.refId,SH.app.mac);
         }
         else
         {
            this.connection.connect("rtmpe://" + param1,SH.app.refId,SH.app.mac);
         }
      }
      
      private function netStatusHandler(param1:NetStatusEvent) : void
      {
         if(param1.info.code == "NetConnection.Connect.Success")
         {
            this.connectStream();
         }
         else if(param1.info.code != "NetStream.Play.StreamNotFound")
         {
            if(param1.info.code == "NetConnection.Connect.Closed")
            {
               this.reconnecter.reconnect(this.onReconnect);
            }
            else if(param1.info.code == "NetConnection.Connect.Failed")
            {
               this.reconnecter.reconnect(this.onReconnect);
            }
            else if(param1.info.code == "NetConnection.Connect.Rejected")
            {
               this.reconnecter.reconnect(this.onReconnect);
            }
         }
      }
      
      private function onReconnect() : void
      {
         this.connect(this._url,this.reconnecter.count > 3);
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
      }
      
      private function connectStream() : void
      {
         this.reconnecter.count = 0;
      }
   }
}

