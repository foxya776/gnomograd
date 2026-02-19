package com.iv.sh.ref
{
   import com.iv.sh.StyleName;
   import com.iv.sh.ui.BlueBut;
   import com.iv.sh.ui.Delimetr;
   import com.iv.sh.ui.GreenBut;
   import com.iv.sh.ui.Link;
   import com.iv.sh.ui.inputform.InputForm;
   import com.iv.sh.ui.popup.PopUp;
   import com.iv.sh.utils.TimeUtils;
   import com.iv.sh.utils.WordUtils;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.controls.Alert;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PopUpRef extends PopUp implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      public var _PopUpRef_BlueBut1:BlueBut;
      
      public var _PopUpRef_HGroup1:HGroup;
      
      public var _PopUpRef_InputForm1:InputForm;
      
      public var _PopUpRef_Label1:Label;
      
      public var _PopUpRef_Label2:Label;
      
      public var _PopUpRef_Label3:Label;
      
      public var _PopUpRef_Label4:Label;
      
      public var _PopUpRef_Label5:Label;
      
      public var _PopUpRef_Link1:Link;
      
      public var _PopUpRef_Rect2:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _112787ref:Ref;
      
      private var _108390670refId:String;
      
      private var _1095692943request:RefPayRequest;
      
      private var _embed_mxml__assets_clock_png_1114645802:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopUpRef()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed_mxml__assets_clock_png_1114645802 = PopUpRef__embed_mxml__assets_clock_png_1114645802;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PopUpRef_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_iv_sh_ref_PopUpRefWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopUpRef[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.priority = 1;
         this.width = 400;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PopUpRef_Array1_c);
         this.addEventListener("creationComplete",this.___PopUpRef_PopUp1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PopUpRef._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected function hcpopup1_creationCompleteHandler(param1:FlexEvent) : void
      {
         SH.app.api.connection.call("getRefStats",new Responder(this.onGetRefStats),this.refId);
      }
      
      private function onGetRefStats(param1:Object) : void
      {
         this.ref = Ref.createFromFMS(param1["ref"]);
         this.ref.status = param1["status"];
         if(param1["request"])
         {
            this.request = RefPayRequest.createFromFMS(param1["request"]);
         }
         else
         {
            this.request = null;
         }
      }
      
      protected function greenbut1_clickHandler(param1:MouseEvent) : void
      {
         hide();
         SH.app.popuper.show(new PopUpRefPayRequest());
      }
      
      protected function bluebut1_clickHandler(param1:MouseEvent) : void
      {
         SH.app.api.connection.call("cancelRefPayRequest",new Responder(this.onCancelRefPayRequest));
      }
      
      private function onCancelRefPayRequest(param1:Object) : void
      {
         if(param1 == 1)
         {
            Alert.show("Вы не наш партнер");
         }
         else if(param1 == 2)
         {
            this.request = null;
         }
         else
         {
            this.request = null;
            this.ref.importFromFMS(param1);
         }
      }
      
      private function onCopy(param1:String) : void
      {
         System.setClipboard(param1);
      }
      
      private function getColor(param1:int) : int
      {
         if(param1 > 1000)
         {
            return 3368448;
         }
         return 13369344;
      }
      
      private function showStats() : void
      {
         var _loc1_:PopUpRefStatsShows = new PopUpRefStatsShows();
         _loc1_.ref = this.ref;
         SH.app.popuper.show(_loc1_);
      }
      
      private function addLivePoints() : void
      {
         var _loc1_:PopUpAddLivePoint = null;
         if(SH.app.admin)
         {
            _loc1_ = new PopUpAddLivePoint();
            _loc1_.ref = this.ref;
            SH.app.popuper.show(_loc1_);
         }
      }
      
      private function _PopUpRef_Array1_c() : Array
      {
         return [this._PopUpRef_VGroup1_c()];
      }
      
      private function _PopUpRef_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PopUpRef_Label1_i(),this._PopUpRef_VGroup2_c(),this._PopUpRef_Link1_i(),this._PopUpRef_Rect1_c(),this._PopUpRef_Label2_i(),this._PopUpRef_BlueBut1_i(),this._PopUpRef_Rect2_i(),this._PopUpRef_Delimetr1_c(),this._PopUpRef_Label3_i(),this._PopUpRef_InputForm1_i(),this._PopUpRef_HGroup1_i(),this._PopUpRef_Delimetr2_c(),this._PopUpRef_Label5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRef_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpRef_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_Label1",this._PopUpRef_Label1);
         return _loc1_;
      }
      
      private function _PopUpRef_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PopUpRef_GreenBut1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRef_GreenBut1_c() : GreenBut
      {
         var _loc1_:GreenBut = new GreenBut();
         _loc1_.percentWidth = 100;
         _loc1_.title = "Получить деньги";
         _loc1_.addEventListener("click",this.___PopUpRef_GreenBut1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___PopUpRef_GreenBut1_click(param1:MouseEvent) : void
      {
         this.greenbut1_clickHandler(param1);
      }
      
      private function _PopUpRef_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Статистика";
         _loc1_.addEventListener("click",this.___PopUpRef_Link1_click);
         _loc1_.id = "_PopUpRef_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_Link1",this._PopUpRef_Link1);
         return _loc1_;
      }
      
      public function ___PopUpRef_Link1_click(param1:MouseEvent) : void
      {
         this.showStats();
      }
      
      private function _PopUpRef_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.height = 10;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpRef_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpRef_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_Label2",this._PopUpRef_Label2);
         return _loc1_;
      }
      
      private function _PopUpRef_BlueBut1_i() : BlueBut
      {
         var _loc1_:BlueBut = new BlueBut();
         _loc1_.title = "Отменить заявку";
         _loc1_.addEventListener("click",this.___PopUpRef_BlueBut1_click);
         _loc1_.id = "_PopUpRef_BlueBut1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_BlueBut1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_BlueBut1",this._PopUpRef_BlueBut1);
         return _loc1_;
      }
      
      public function ___PopUpRef_BlueBut1_click(param1:MouseEvent) : void
      {
         this.bluebut1_clickHandler(param1);
      }
      
      private function _PopUpRef_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.height = 10;
         _loc1_.initialized(this,"_PopUpRef_Rect2");
         this._PopUpRef_Rect2 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_Rect2",this._PopUpRef_Rect2);
         return _loc1_;
      }
      
      private function _PopUpRef_Delimetr1_c() : Delimetr
      {
         var _loc1_:Delimetr = new Delimetr();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRef_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.text = "Помните, что выплата вознаграждения производится от 1000 рублей, на ваш яндекс кошелек, в течении 4 рабочих дней";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpRef_Label3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_Label3 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_Label3",this._PopUpRef_Label3);
         return _loc1_;
      }
      
      private function _PopUpRef_InputForm1_i() : InputForm
      {
         var _loc1_:InputForm = new InputForm();
         _loc1_.percentWidth = 100;
         _loc1_.maxChars = 10000;
         _loc1_.editable = false;
         _loc1_.title = "Скопировать";
         _loc1_.id = "_PopUpRef_InputForm1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_InputForm1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_InputForm1",this._PopUpRef_InputForm1);
         return _loc1_;
      }
      
      private function _PopUpRef_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.mouseChildren = false;
         _loc1_.toolTip = "Каждый потраченный вашими участниками рубль дает +2000 человекоминут. Списываются они раз в минуту в зависимости от количества участников в онлайне. Если человекоминуты закончатся, потребуется повторная активация.";
         _loc1_.mxmlContent = [this._PopUpRef_BitmapImage1_c(),this._PopUpRef_Label4_i()];
         _loc1_.addEventListener("click",this.___PopUpRef_HGroup1_click);
         _loc1_.id = "_PopUpRef_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_HGroup1",this._PopUpRef_HGroup1);
         return _loc1_;
      }
      
      private function _PopUpRef_BitmapImage1_c() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml__assets_clock_png_1114645802;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PopUpRef_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.setStyle("fontSize",15);
         _loc1_.setStyle("paddingTop",2);
         _loc1_.id = "_PopUpRef_Label4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_Label4 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_Label4",this._PopUpRef_Label4);
         return _loc1_;
      }
      
      public function ___PopUpRef_HGroup1_click(param1:MouseEvent) : void
      {
         this.addLivePoints();
      }
      
      private function _PopUpRef_Delimetr2_c() : Delimetr
      {
         var _loc1_:Delimetr = new Delimetr();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopUpRef_Label5_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.text = "Для включения возможности входа пользователей через vkontakte.ru обновите код чата на вашем сайте.";
         _loc1_.setStyle("paddingTop",2);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_PopUpRef_Label5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopUpRef_Label5 = _loc1_;
         BindingManager.executeBindings(this,"_PopUpRef_Label5",this._PopUpRef_Label5);
         return _loc1_;
      }
      
      public function ___PopUpRef_PopUp1_creationComplete(param1:FlexEvent) : void
      {
         this.hcpopup1_creationCompleteHandler(param1);
      }
      
      private function _PopUpRef_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = "У вас " + WordUtils.getRubleMoneyStrFull(ref.money) + ", " + WordUtils.getFullCorrectWord(ref.shows,["просмотр","просмотра","просмотров"]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpRef_Label1.text");
         result[1] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpRef_Label1.styleName");
         result[2] = new Binding(this,function():Object
         {
            return StyleName.baseText;
         },null,"_PopUpRef_Link1.styleName");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = "Заявление о переводе " + WordUtils.getRubleMoneyStrFull(request.money) + " " + "\r\n" + "на счёт яндекс кошелька " + request.num + ", " + "\r\n" + "отправлено " + TimeUtils.getDateStr(request.time) + " " + "\r\n" + "c IP: " + request.ip;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpRef_Label2.text");
         result[4] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpRef_Label2.styleName");
         result[5] = new Binding(this,null,null,"_PopUpRef_Label2.visible","request");
         result[6] = new Binding(this,null,null,"_PopUpRef_Label2.includeInLayout","request");
         result[7] = new Binding(this,null,null,"_PopUpRef_BlueBut1.showed","request");
         result[8] = new Binding(this,null,null,"_PopUpRef_Rect2.visible","request");
         result[9] = new Binding(this,null,null,"_PopUpRef_Rect2.includeInLayout","request");
         result[10] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpRef_Label3.styleName");
         result[11] = new Binding(this,function():String
         {
            var _loc1_:* = ref.id;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpRef_InputForm1.text");
         result[12] = new Binding(this,function():Function
         {
            return onCopy;
         },null,"_PopUpRef_InputForm1.onSend");
         result[13] = new Binding(this,function():Boolean
         {
            return SH.app.admin;
         },null,"_PopUpRef_InputForm1.visible");
         result[14] = new Binding(this,function():Boolean
         {
            return SH.app.admin;
         },null,"_PopUpRef_InputForm1.includeInLayout");
         result[15] = new Binding(this,function():Boolean
         {
            return SH.app.admin;
         },null,"_PopUpRef_HGroup1.buttonMode");
         result[16] = new Binding(this,function():String
         {
            var _loc1_:* = ref.livePoints;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PopUpRef_Label4.text");
         result[17] = new Binding(this,function():uint
         {
            return getColor(ref.livePoints);
         },function(param1:uint):void
         {
            _PopUpRef_Label4.setStyle("color",param1);
         },"_PopUpRef_Label4.color");
         result[18] = new Binding(this,function():Object
         {
            return StyleName.baseTextPassiv;
         },null,"_PopUpRef_Label5.styleName");
         return result;
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
      
      [Bindable(event="propertyChange")]
      public function get refId() : String
      {
         return this._108390670refId;
      }
      
      public function set refId(param1:String) : void
      {
         var _loc2_:Object = this._108390670refId;
         if(_loc2_ !== param1)
         {
            this._108390670refId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get request() : RefPayRequest
      {
         return this._1095692943request;
      }
      
      public function set request(param1:RefPayRequest) : void
      {
         var _loc2_:Object = this._1095692943request;
         if(_loc2_ !== param1)
         {
            this._1095692943request = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"request",_loc2_,param1));
            }
         }
      }
   }
}

