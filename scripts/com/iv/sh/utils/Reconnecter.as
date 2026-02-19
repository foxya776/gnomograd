package com.iv.sh.utils
{
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class Reconnecter
   {
      
      private var _delay:int;
      
      private var _intervalId:int = -1;
      
      public var count:int = 0;
      
      private var _onError:Function;
      
      public function Reconnecter(param1:int, param2:Function = null)
      {
         super();
         this._delay = param1;
         this._onError = param2;
      }
      
      public function reconnect(param1:Function) : void
      {
         if(this.count < 6)
         {
            if(this._intervalId != -1)
            {
               clearInterval(this._intervalId);
            }
            this._intervalId = setInterval(this.onInterval,this._delay,param1);
         }
         else if(Boolean(this._onError))
         {
            this._onError();
         }
      }
      
      private function onInterval(param1:Function) : void
      {
         if(this._intervalId != -1)
         {
            clearInterval(this._intervalId);
            this._intervalId = -1;
         }
         ++this.count;
         param1();
      }
   }
}

