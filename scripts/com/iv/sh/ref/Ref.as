package com.iv.sh.ref
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class Ref implements IEventDispatcher
   {
      
      private var _3355id:String;
      
      private var _104079552money:int;
      
      private var _109413654shows:int;
      
      private var _892481550status:int;
      
      private var _17453022ownerName:String;
      
      private var _3598564urls:Array;
      
      private var _780048623livePoints:int;
      
      private var _843502656regInSite:Boolean;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function Ref()
      {
         super();
      }
      
      public static function createFromFMS(param1:Object) : Ref
      {
         var _loc2_:Ref = new Ref();
         _loc2_.importFromFMS(param1);
         return _loc2_;
      }
      
      public function importFromFMS(param1:Object) : void
      {
         this.id = param1.id;
         this.money = param1.money;
         this.shows = param1.shows;
         this.ownerName = param1.ownerName;
         this.livePoints = param1.livePoints;
         this.regInSite = param1.regInSite;
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
      public function get shows() : int
      {
         return this._109413654shows;
      }
      
      public function set shows(param1:int) : void
      {
         var _loc2_:Object = this._109413654shows;
         if(_loc2_ !== param1)
         {
            this._109413654shows = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shows",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get status() : int
      {
         return this._892481550status;
      }
      
      public function set status(param1:int) : void
      {
         var _loc2_:Object = this._892481550status;
         if(_loc2_ !== param1)
         {
            this._892481550status = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"status",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ownerName() : String
      {
         return this._17453022ownerName;
      }
      
      public function set ownerName(param1:String) : void
      {
         var _loc2_:Object = this._17453022ownerName;
         if(_loc2_ !== param1)
         {
            this._17453022ownerName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ownerName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urls() : Array
      {
         return this._3598564urls;
      }
      
      public function set urls(param1:Array) : void
      {
         var _loc2_:Object = this._3598564urls;
         if(_loc2_ !== param1)
         {
            this._3598564urls = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urls",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get livePoints() : int
      {
         return this._780048623livePoints;
      }
      
      public function set livePoints(param1:int) : void
      {
         var _loc2_:Object = this._780048623livePoints;
         if(_loc2_ !== param1)
         {
            this._780048623livePoints = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"livePoints",_loc2_,param1));
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

