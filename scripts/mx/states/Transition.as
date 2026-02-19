package mx.states
{
   import mx.core.mx_internal;
   import mx.effects.IEffect;
   
   use namespace mx_internal;
   
   public class Transition
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
      
      public var effect:IEffect;
      
      public var fromState:String = "*";
      
      public var toState:String = "*";
      
      public var autoReverse:Boolean = false;
      
      public var interruptionBehavior:String = InterruptionBehavior.END;
      
      public function Transition()
      {
         super();
      }
   }
}

