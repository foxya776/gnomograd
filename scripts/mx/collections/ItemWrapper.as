package mx.collections
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ItemWrapper
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      public var data:Object;
      
      public function ItemWrapper(param1:Object)
      {
         super();
         this.data = param1;
      }
   }
}

