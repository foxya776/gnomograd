package mx.controls.listClasses
{
   import mx.managers.IFocusManagerComponent;
   import spark.components.supportClasses.ItemRenderer;
   
   public class MXItemRenderer extends ItemRenderer implements IListItemRenderer, IDropInListItemRenderer
   {
      
      private var rendererStateChanged:Boolean;
      
      private var _listData:BaseListData;
      
      public var editor:IFocusManagerComponent;
      
      public function MXItemRenderer()
      {
         super();
         focusEnabled = false;
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return this._listData;
      }
      
      public function set listData(param1:BaseListData) : void
      {
         this._listData = param1;
         invalidateProperties();
      }
      
      public function get text() : String
      {
         if(Boolean(this.editor) && "text" in this.editor)
         {
            return this.editor["text"];
         }
         return null;
      }
      
      override public function invalidateDisplayList() : void
      {
         var _loc1_:ListBase = null;
         if(this.listData)
         {
            _loc1_ = ListBase(this.listData.owner);
            if(_loc1_)
            {
               if(showsCaret != _loc1_.isItemShowingCaret(data) || selected != _loc1_.isItemSelected(data) || super.hovered != _loc1_.isItemHighlighted(data))
               {
                  this.rendererStateChanged = true;
                  invalidateProperties();
               }
            }
         }
         super.invalidateDisplayList();
      }
      
      override protected function set hovered(param1:Boolean) : void
      {
         var _loc2_:ListBase = null;
         if(this.listData)
         {
            _loc2_ = ListBase(this.listData.owner);
            if(_loc2_)
            {
               selected = _loc2_.isItemSelected(data);
               param1 = _loc2_.isItemHighlighted(data);
            }
         }
         super.hovered = param1;
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ListBase = null;
         if(this.listData)
         {
            _loc1_ = ListBase(this.listData.owner);
            itemIndex = this.listData.rowIndex + _loc1_.verticalScrollPosition;
         }
         if(this.rendererStateChanged && Boolean(_loc1_))
         {
            this.rendererStateChanged = false;
            showsCaret = _loc1_.isItemShowingCaret(data);
            selected = _loc1_.isItemSelected(data);
            super.hovered = _loc1_.isItemHighlighted(data);
         }
         super.commitProperties();
      }
      
      override public function setFocus() : void
      {
         if(this.editor)
         {
            this.editor.setFocus();
            return;
         }
         super.setFocus();
      }
   }
}

