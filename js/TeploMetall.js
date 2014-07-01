var galleryCntr = {
    showOk: function () {
        var e = $('#inputEmail').val(); 
        var t = $('#inputTel').val(); 
         if ((e == ''||!common.isEmail(e) )&& t == '') {
            $('#addEmailPhoneL').addClass('label-important').addClass('label').removeClass('help-block');


            return;
        }
        $('#IWontDlg').modal('hide');
        $('#IWantDlg_OK').modal();
    },

    removeValidator: function () {
        $('#addEmailPhoneL').removeClass('label-important').removeClass('label').addClass('help-block');
    },

    showIWant: function (imgPath) {
        var dlg = $('#IWontDlg');
        $('#iWantThumb', dlg).attr('src', imgPath);
        galleryCntr.removeValidator();
        dlg.modal();
    },
    /*показать следующую стр галлереи*/
    showPage: function (n) {
        //        $('#galleryPage1').hide("slide", { direction: "left" }, 1000);
        //        $('#galleryPage2').show("slide", { direction: "left" }, 1000);

        $('#galleryNav').find('li').removeClass('active');
        $('#galleryNav').find('li').eq(n - 1).addClass('active');
        $("div[id^='galleryPage']").hide(" ");
        $("#galleryPage" + n).show(" ");


        //active = divname;
    }
}

var bigProductDlg = {
    show: function (imgPath) {
        var dlg = $('#bigProductDlg');
        dlg.find('img').attr('src', imgPath);
        dlg.css('width', '750px');
        dlg.css('margin', '100px auto 100px -375px');
        dlg.modal('show');
    },
    iWant: function (imgPath) {
        $('#bigProductDlg').modal('hide');
        galleryCntr.showIWant(imgPath);
    }
}

var mapContainer = {
    toogle: function () {
        $('#mapContainer').toggle(800);
    }
}

var headerAny = {
    goToDelivery: function () {
        $('html,body').animate({
            scrollTop:  $('#deliveryAnchor').offset().top -400 + 'px'
        }, 'fast');
    },

    goHome: function () {
        $('html,body').animate({
            scrollTop: 0
        }, 'fast');
    }
}

var callManagerD = {
    open: function () {
        callManagerD.removeValidator();
        $('#defCmCtrl').modal();
    },

    showOk: function () {
        var context = $('#defCmCtrl');
        var e = $('#cmInputEmail', context).val();
        var t = $('#cmInputTel', context).val();
        var n = $('#cmInputName', context).val();
        var comm = $('#cmInputComment', context).val();

        var formInput  = e+"^^^"+t+"^^^"+n+"^^^"+comm;


        if ((e == '' || !common.isEmail(e)) && t == '') {
            //not valid
            $('#cmAddEmailPhoneL', context).addClass('label-important').addClass('label').removeClass('help-block');


            return;
        }
        else {
            //                        $.jmsajax({
            //                            url: "common.asmx/HelloWorld",
            //                            data: {d:'123'  },
            //                            success: function (data) {
            //                                alert(data); 
            //                            }
            //                        });



            $.getJSON("Handler.ashx", {
                type: "POST",
                data: formInput,
                format: "json"
            }).done(function (data) {
                var v = data;
            }).fail(function () {
                console.log("error");
            })

        }

        $('#defCmCtrl').modal('hide');
        $('#IWantDlg_OK').modal();
    },

    removeValidator: function () {
        $('#cmAddEmailPhoneL').removeClass('label-important').removeClass('label').addClass('help-block');
    }
}

var common = {
   isEmail: function (email) {
      var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
      return regex.test(email);
    }
}


