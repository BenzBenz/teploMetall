<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="uc1" TagName="Gallery" Src="~/Controls/Gallery.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CallManager" Src="~/Controls/CallManager.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Теплицы и металлоконструкции "Удачный комфорт"</title>
    <link rel="Stylesheet" href="css/bootstrap.min.css" />
    <link rel="Stylesheet" href="css/style.css" />
    <script src="js/jquery.js"></script>
    <script src ="js/jquery.jmsajax.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/TeploMetall.js" type="text/javascript"></script>
    <script type="text/javascript">
        var defCmCtrl = "<%=cmCtrl.ClientID%>";


        $(document).ready(function () {

                $("[rel='tooltip']").tooltip();

                $('#hover-cap-4col .thumbnail').hover(
            function () {
                $(this).find('.caption').slideDown(250); //.fadeIn(250)
            },
            function () {
                $(this).find('.caption').slideUp(250); //.fadeOut(205)
            }
        );

            $('#bannerMain').carousel({
                interval: 8000
            })

        });        
    </script>
</head>
<body>
     <div class=" " id="header">
        <div class=" header-my">
            <div class="span4 logo-cover">
                <a href="javascript:headerAny.goHome()">
                 <img src="pictures\logoBig.png" alt="удачный комфорт" />
                </a>
            </div>
            <div class="span7 header-nav">
                <ul class="nav nav-list">
                    <li class="nav-header header-black">Теплицы и металлоконструкции "под ключ"</li>
                    <li><span><a href="javascript:headerAny.goToDelivery()" class="inline">Доставка</a>&nbsp;(Чувашия
                        и Мари Эл)</span></li>
                    <li><a href="javascript:headerAny.goToDelivery()">Установка</a></li>
                    <li><span><a href="javascript:headerAny.goToDelivery()">Самовывоз</a>&nbsp;(из г. Чебоксары)</span></li>
                </ul>
            </div>
            <div class="span7 header-contact">
                <ul class="nav nav-list">
                    <li>
                        <div class="control-group">
                            <label class="control-label" for="inputName">
                            </label>
                            <div class="controls">
                                <p class="phone ">
                                    8 (8352) 36 03 54</p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%--<input type="submit" name="add" value="Заказать звонок" onclick ="callManagerD.open()" class="btn btn-success header-button" />--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="control-group">
                            <label class="control-label" for="inputName">
                            </label>
                            <div class="controls">
                                <a href="mailto:comfort.21@mail.ru" class="mail inline">comfort.21@mail.ru</a> &nbsp;&nbsp;
                                <%--<input type="submit" name="add" value="Написать нам"  onclick ="callManagerD.open()" class="btn btn-success header-button" />--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="control-group">
                            <label class="control-label" for="inputName">
                            </label>
                            <div class="controls">
                                 <a   onclick ="callManagerD.open()" style = "margin-left:40px;" class="btn btn-success header-button btn-small" >Связаться с нами</a>
                           </div>
                       </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container" id="bodyMain">
        <div class="row">
            <div class="span12">
                <div class="carousel slide" id="bannerMain">
                    <ol class="carousel-indicators">
                        <li class="active" data-target="#bannerMain" data-slide-to="0"></li>
                        <li data-target="#bannerMain" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="pictures/Banner_Cover1.png" alt="навес скидка 20 %" />
                        </div>
                        <div class="item ">
                            <img src="pictures/Banner2.jpg" alt="навес скидка 20 %" />
                            <div class="carousel-caption ">
                                <h2 class="banner-caption">
                                    Скидка до 20% на навес в июле!</h2>
                                <p>
                                    Подробности уточняйте у менеджера</p>
                            </div>
                        </div>
                    </div>
                    <a></a><a></a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <section class="visual_content">
                    <h2>Мы  изготавливаем</h2>
            </section>
                <ul class="nav nav-tabs" id = "galleryNav">
                    <li class="active"><a href="javascript:galleryCntr.showPage(1)">Теплицы</a> </li>
                    <li><a href="javascript:galleryCntr.showPage(2)">Навесы</a></li>
                    <li><a href="javascript:galleryCntr.showPage(3)">Металлоконструкции</a></li>
                </ul>
            </div>
        </div>
        <div class="row-fluid">
            <uc1:Gallery path="pictures/greenhouse" HtmlId="galleryPage1" GallerySize="7"   runat="server" /> 
            <uc1:Gallery path="pictures/cover" HtmlId="galleryPage2" GallerySize="23"   runat="server"  Show = "false" /> 
            <uc1:Gallery path="pictures/metall" HtmlId="galleryPage3" GallerySize="6"   runat="server"  Show = "false" /> 
            <!--"Хочу такую" модальное-->
            <div class="modal fade hide" id="IWontDlg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="icon-remove"></i>
                    </button>
                    <h3 id="myModalLabel">
                        Хочу такую</h3>
                </div>
                <div class="modal-body">
                    <div style="text-align: center; margin-bottom: 10px;">
                        <img id ="iWantThumb" src="pictures/greenhouse/thumbnail/7.jpg" alt="теплица">
                    </div>
                    
                    <form class="form-horizontal">
                    <div class="control-group">
                        <label class="control-label" for="inputTel">
                            Телефон</label>
                        <div class="controls">
                            <input type="text" id="inputTel" placeholder="8 919 123 4567">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">
                            Email</label>
                        <div class="controls">
                            <input type="text" id="inputEmail" placeholder="sample@gmail.com" />
                            <span class="help-block" id="addEmailPhoneL">Укажите или телефон, или Email</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputName">
                            Имя</label>
                        <div class="controls">
                            <input type="text" id="inputName" placeholder="Алексей Иванов">
                            <span class="help-block">Необязательно</span>
                        </div>
                    </div>
                    </form>                    
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">
                        Закрыть</button>
                    <button class="btn btn-success" onclick="galleryCntr.showOk()">
                        Отправить</button>
                </div>
            </div>
            <div style="display: none;" class="modal fade hide" id="IWantDlg_OK" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
            </div>
            <!---->
            <!--Слайдер галлереи продуктов Большое окно-->
            <div class="modal fade hide" id="bigProductDlg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="icon-remove"></i>
                    </button>
                    <h3 id="H2">
                        <br />
                    </h3>
                </div>
                <div class="modal-body">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="pictures/greenhouse/7.jpg" />
                            </div>
                        </div>
                        <%--<a style="margin-top: 30px;" class="left carousel-control" href="#carousel-example-generic"
                            data-slide="prev">&lsaquo; </a>
                        <a style="margin-top: 30px;" class="right carousel-control"
                                href="#carousel-example-generic" data-slide="next">&rsaquo; </a>--%>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="controls">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                            Закрыть</button>
                        <input type="submit" name="add" value="Хочу такую!" class="btn btn-success header-button"
                            onclick="bigProductDlg.iWant('pictures/greenhouse/thumbnail/7.jpg')" />
                    </div>
                </div>
            </div>
            <!---->
        </div>
        <h4>
            Часть нашей продукции можно увидеть на выстовочном стенде</h4>
        <img src="icons/map_icon.png" class="middleIcon" /><span class="dotted" style="margin: 10px;"
            onclick="mapContainer.toogle()">Посмотреть адрес</span><br />
        <br />
        <div id="mapContainer" style="display: none;">
            <div class="mapAddress">
                г. Чебоксары, Складской проезд, д.6
            </div>
            <div style="width: 950px;" class="thumbnail" id="showRoomPnl">
                <script type="text/javascript" charset="utf-8" src="//api-maps.yandex.ru/services/constructor/1.0/js/?sid=3ameBeckAoezFcnjWnxUsYJ4kkIx_Y_R&width=950&height=450"></script>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <section class="visual_content">
                    <h2>Мы предлагаем не просто товар, а решение в целом</h2>                    
                </section>
            </div>
        </div>
        <div class="row">
            <div class="span4 icons__icon">
                <div style="text-align: center;">
                    <img src="icons/delivery.png" class="img-circle" />
                </div>
                <span class="icons__title" id="deliveryAnchor">Доставка</span> <span>Доставим любую
                    продукцю по <b>Чувашии</b> и <b>Мари Эл</b>. Для расчета стоимости обратитесь к
                    менеджеру</span>
            </div>
            <div class="span4 icons__icon">
                <div style="text-align: center;">
                    <img src="icons/installation.png" class="img-circle">
                </div>
                <span class="icons__title">Установка</span> <span>Наши специалисты произведут установку
                    любой нашей продукции по умеренной стоимости. Для расчета стоимости обратитесь к
                    менеджеру.</span>
            </div>
            <div class="span4 icons__icon">
                <div style="text-align: center;">
                    <img src="icons/sdelivery.png" class="img-circle" />
                </div>
                <span class="icons__title">Самовывоз</span> <span>При желании вы можете вывезти продукцию
                    самостоятельно с 9 до 19 ч.</span>
                <div style="text-align: center; margin-top: 10px;">
                    <a class="btn btn-info" href="#ourAddress">
                        Посмотреть адрес самовывоза</a>
                </div>
            </div>
        </div>
        <div class="row" style="text-align: center; margin-top: 30px;">
            <button class="btn btn-success btn-large btn-primary" onclick ="callManagerD.open()">Обратиться к менеджеру</button>
        </div>
        <div class="row" style="margin-top: 50px">
            <div class="span12">
                <section class="visual_content">
                    <h2>Гарантия и наличие</h2>                    
                </section>
            </div>
        </div>
        <div class="row">
            <div class="span4">
                <section class="">
                <div style="float:left"><img src = "icons\warranty.png" /></div>
                    <div style="padding-top: 30px;"">Гарантия изделия на металлический профиль 1 год!</div>
                </section>
            </div>
            <div class="span4">
                <section class="">
                <div style="float:left"><img src = "icons\warranty.png" /></div>
                    <div style="padding-top: 30px;"">Гарантия на поликорбанат 5 лет!</div>
                </section>
            </div>
            <div class="span4">
                <section class="">
                <div style="float:left"><img src = "icons\star.png" /></div>
                    <div style="padding-top: 30px;"">Теплицы и навесы уже есть в наличии! Уточните количество у менеджера и приезжайте!</div>
                </section>
            </div>
        </div>
        <div class="row" style="margin-top: 50px">
            <div class="span12">
                <section class="visual_content">
                    <h2>Сколько это стоит?</h2>                    
                </section>
            </div>
        </div>
        <div class="row-fluid">
            <ul class="thumbnails">
                <li class="span4">
                <div class="thumbnail">
                    <br><img src="pictures/cover/thumbnail/1.jpg" alt=""><br>
                </div>
                <div class="howPrice-descr">
                    <span>2х скатные навесы </span><span class="textXL"><nobr>  от 2 500 р. за кв м</nobr></span>
                </div>
                </li>
                <li class="span4">
                    <div class="thumbnail">
                    <br>
                    <img src="pictures/greenhouse/thumbnail/3.jpg" alt=""><br>
                </div>
                <div class="howPrice-descr">
                    <span>Теплицы </span><span class="textXL"><nobr>от 6 000 р.</nobr></span>
                </div> 
                </li>
                <li class="span4">
                <div class="thumbnail"> 
                    <br />
                    <img src="pictures/cover/thumbnail/15.jpg"   alt=""> 
                    <br />
                </div>
                <div class="howPrice-descr">
                    <span>Козырек стандартный </span><span class="textXL"><nobr>от 4 500 р.</nobr></span>
                </div> 
                </li>
            </ul>
            </div>
        <div class="row" style="text-align: center;  ">
                <button class="btn btn-success btn-large btn-primary"  onclick ="callManagerD.open()">Обратиться к менеджеру</button>
            </div>
        <div class="row" style="margin-top: 50px">
            <div class="span12">
                <section class="visual_content">
                    <h2 id ="ourAddress">Наши адреса</h2>                    
                </section>
            </div>
        </div>
        <div class="row">
            <div class="span5">
            <h3>Точка самовывоза</h3>
            Мы находимся по адресу: город Чебоксары, Складской проезд, д.10
 
            Время работы: с 9 до 19 часов
            Перед выездом желательно связаться с менеджером
            </div>
            <div class="span2"></div>
            <div class="span5">
            <h3>Стенды с продукцией</h3>
            Стенды с нашей продукцией вы можете посмотреть в любое время по адресу: г. Чебоксары, Складской проезд, д.6
            </div>
        </div>
        
        <div style="margin :40px 0 40px 0">
            <script type="text/javascript" charset="utf-8" src="//api-maps.yandex.ru/services/constructor/1.0/js/?sid=SG7fcORvjrBGU1qWNJfsGAVJLNWrd1Jj&width=950&height=450"></script>
        </div>
       
        <div class=" row" id="footer">
            <div class="span12" style = "float:right;"> © ООО "уДачный комфорт"    2005 - 2014</div>
            <div id = "yaMetrica" style ="display:none;">
                <!-- Yandex.Metrika informer --><a href="https://metrika.yandex.ru/stat/?id=25414730&amp;from=informer" target="_blank" rel="nofollow"><img src="//bs.yandex.ru/informer/25414730/3_0_4EAB77FF_2E8B57FF_0_pageviews" style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" onclick="try{Ya.Metrika.informer({i:this,id:25414730,lang:'ru'});return false}catch(e){}"/></a><!-- /Yandex.Metrika informer --><!-- Yandex.Metrika counter --><script type="text/javascript">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (function (d, w, c) { (w[c] = w[c] || []).push(function () { try { w.yaCounter25414730 = new Ya.Metrika({ id: 25414730, clickmap: true, trackLinks: true, accurateTrackBounce: true }); } catch (e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");</script><noscript><div><img src="//mc.yandex.ru/watch/25414730" style="position:absolute; left:-9999px;" alt="" /></div></noscript><!-- /Yandex.Metrika counter -->
            </div>
        </div>
    </div>
    <uc1:CallManager runat = "server" id = "cmCtrl"></uc1:CallManager>
</body>
</html>
