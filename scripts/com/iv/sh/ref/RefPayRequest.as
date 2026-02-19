package com.iv.sh.ref
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class RefPayRequest implements IEventDispatcher
   {
      
      private var _104079552money:int;
      
      private var _109446num:String;
      
      private var _3560141time:Number;
      
      private var _3367ip:String;
      
      private var _112787ref:Ref;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function RefPayRequest()
      {
         super();
      }
      
      public static function createFromFMS(param1:Object) : RefPayRequest
      {
         var _loc2_:RefPayRequest = new RefPayRequest();
         _loc2_.importFMS(param1);
         return _loc2_;
      }
      
      public function importFMS(param1:Object) : void
      {
         this.money = param1.money;
         this.num = param1.num;
         this.time = param1.time;
         this.ip = param1.ip;
      }
      
      [Bindable(event="propertyChange")]
      public function get money() : int
      {
         return this._104079552money;
      }
      
      public function set money(param1:int) : void
      {
         var _loc2_:Object = this._104079552money;
         if(_loc2_ !== param1)
         {
            this._104079552money = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"money",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get num() : String
      {
         return this._109446num;
      }
      
      public function set num(param1:String) : void
      {
         var _loc2_:Object = this._109446num;
         if(_loc2_ !== param1)
         {
            this._109446num = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : Number
      {
         return this._3560141time;
      }
      
      public function set time(param1:Number) : void
      {
         var _loc2_:Object = this._3560141time;
         if(_loc2_ !== param1)
         {
            this._3560141time = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ip() : String
      {
         return this._3367ip;
      }
      
      public function set ip(param1:String) : void
      {
         var _loc2_:Object = this._3367ip;
         if(_loc2_ !== param1)
         {
            this._3367ip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ref() : Ref
      {
         return this._112787ref;
      }
      
      public function set ref(param1:Ref) : void
      {
         var _loc2_:Object = this._112787ref;
         if(_loc2_ !== param1)
         {
            this._112787ref = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ref",_loc2_,param1));
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

