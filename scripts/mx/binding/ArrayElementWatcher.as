package mx.binding
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ArrayElementWatcher extends Watcher
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      private var document:Object;
      
      private var accessorFunc:Function;
      
      public var arrayWatcher:Watcher;
      
      public function ArrayElementWatcher(param1:Object, param2:Function, param3:Array)
      {
         super(param3);
         this.document = param1;
         this.accessorFunc = param2;
      }
      
      override public function updateParent(param1:Object) : void
      {
         var parent:Object = param1;
         if(this.arrayWatcher.value != null)
         {
            wrapUpdate(function():void
            {
               value = arrayWatcher.value[accessorFunc.apply(document)];
               updateChildren();
            });
         }
      }
      
      override protected function shallowClone() : Watcher
      {
         return new ArrayElementWatcher(this.document,this.accessorFunc,listeners);
      }
   }
}

