<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CallManager.ascx.cs" Inherits="Controls_CallManager" %>
 <div class="modal fade hide" id = "defCmCtrl"   tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            <i class="icon-remove"></i>
        </button>
        <h3 id="myModalLabel">Оставить заявку</h3>
    </div>
    <div class="modal-body">
        <form class="form-horizontal">
        <div class="control-group" id ="cmInputTelContainer">
            <label class="control-label" for="inputTel">
                Телефон</label>
            <div class="controls">
                <input type="text" id="cmInputTel" placeholder="8 919 123 4567">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="cmInputEmail">
                Email</label>
            <div class="controls">
                <input type="text" id="cmInputEmail" placeholder="sample@gmail.com" />
                <span class="help-block" id="cmAddEmailPhoneL">Укажите или телефон, или Email</span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="cmInputName">
                Имя</label>
            <div class="controls">
                <input type="text" id="cmInputName" placeholder="Алексей Иванов">
                <span class="help-block">Необязательно</span>
            </div>
        </div>
         <div class="control-group">
            <label class="control-label" for="cmInputComment">
                Комментарии</label>
            <div class="controls">
                 <textarea rows = "5" id = "cmInputComment"> </textarea>
                <span class="help-block">Необязательно</span>
            </div>
        </div>
        </form>                    
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">
            Закрыть</button>
        <button class="btn btn-success" onclick="callManagerD.showOk()">
            Отправить</button>
    </div>
</div>
<%--<div style="display: none;" class="modal fade hide"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            <i class="icon-remove"></i>
        </button>
        <h3 id="H1">
            Готово!</h3>
    </div>
    <div class="modal-body">
        <h4>
            Ваша заявка отправлена!<br />
            Я отвечу на нее сразу же как освобжусь (в рабочие часы как правило в течении часа).</h4>
        <div style="float: left;">
            <img src="http://placehold.it/150x200" />
        </div>
        <div class="mailDescription">
            С уважением,<br />
            Ваш менеджер<br />
            Алексеев Радик<br />
            8 (8352) 36 03 54
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">
            Закрыть</button>
    </div>
</div>--%>
