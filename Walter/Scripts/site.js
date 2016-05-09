//This function is part of the the Scroll to Top
//this function is To show and hide the button
$(function () {
    $(document).on('scroll', function () {

        if ($(window).scrollTop() > 100) {
            $('.scroll-top-wrapper').addClass('show');
        } else {
            $('.scroll-top-wrapper').removeClass('show');
        }
    });
});

//This function is part of the the Scroll to Top
// Handle a button click and scroll to the top of the page.
$(function () {
    $(document).on('scroll', function () {

        if ($(window).scrollTop() > 100) {
            $('.scroll-top-wrapper').addClass('show');
        } else {
            $('.scroll-top-wrapper').removeClass('show');
        }
    });

    $('.scroll-top-wrapper').on('click', scrollToTop);
});

function scrollToTop() {
    verticalOffset = typeof (verticalOffset) != 'undefined' ? verticalOffset : 0;
    element = $('body');
    offset = element.offset();
    offsetTop = offset.top;
    $('html, body').animate({ scrollTop: offsetTop }, 500, 'linear');
}


function OpenModalAddMtn() {
    ShowSection(1);
    $("#ModalAddMtn").modal();
}

function OpenAddClimbModal(mtnId, mtnName) {
    $("#MountainID").val(mtnId);
    $("#MtnName").text(mtnName);
    $("#ModalAddClimb").modal();
}

function OpenElmahXML(divId) {
    var x = $('#div' + divId).text();
    $('#textAreaModalBody').text(x);
    $("#ModalElmahXML").modal();
}

function ShowSection(num) {
    if (num == 1) {
        $("#Section2").hide();
        $("#Section1").fadeIn('slow');
    }

    if (num == 2) {
        var mtnName = $('#Name').val().trim().length;
        var mtnElevation = $('#Elevation').val().trim().length;
        var mtnCountry = $('#Country').val().trim().length;


        if (mtnName == 0) {
            $('#Name').focus();
            return false;
        }

        if (mtnElevation == 0) {
            $('#Elevation').focus();
            return false;
        }

        if (mtnCountry == 0) {
            $('#Country').focus();
            return false;
        }

        if ((mtnName > 0 && mtnElevation > 0 && mtnCountry > 0)) {
            $("#Section1").hide();
            $("#Section2").fadeIn('slow');
        }
    }
}

function climbsValidate() {
    if ($.trim($("#form1").find('#startDate').val()) === '') {
        alert('Pick a start date.')
    }
    else if ($.trim($("#form1").find('#endDate').val()) === '') {
        alert('Pick an end date.')
    }
    else {
        document.getElementById('form1').submit();
    }
}

function imgError(image) {
    image.onerror = "";
    image.src = "/Images/MissingImg.png";

    $('#jsDiv').hide(); //hide the global error message div

    return true;
}

function ShowWaiting() {
    $('#DivData').fadeOut('slow');
    $('#DivWait').slideDown('slow');
    document.getElementById("form1").submit();
}

function deleteImage(Id) {
    $.post("/Home/DeleteImage",
{
    Id: Id
},
function (data, status) {
    //alert("Data: " + data + "\nStatus: " + status);
    $('#div' + Id).hide();
    var c = parseInt($('#ImageCount').text()) * 1 ;
    $('#ImageCount').text(c - 1);
});
}

function createJumpAnchors(years,anchorPrefix, menuId)
{
    if (years != 'NONE')
    {
        var jumpToMenu = "";
        var lastIndex = years.length - 1;
        var lagYear = "";
        $.each(years, function(index, value) {
            jumpToMenu += "<a href='#" + anchorPrefix + lagYear + "'>" + value + "</a>";
            lagYear = value;
            if (index < lastIndex) {
                jumpToMenu += " | ";
            }
        });

        $('#' + menuId).html("Jump to: " + jumpToMenu);
    }
}

function monthYearFilter()
{
    var x = $('#StartMonth').val() + "/1/" + $('#StartYear').val();
    $("#form2").find('#startDate').val(x);

    //   new Date(year, month, day, hours, minutes, seconds, milliseconds)
    var lastDay = new Date($('#EndYear').val(), $('#EndMonth').val(), 0); //Jan = 0, Feb = 1, etc.  Day set to 0 gives us the last day of the previous month
    var lastDayWithSlashes = ((lastDay.getMonth() + 1) + '/' + lastDay.getDate()) + '/' + lastDay.getFullYear();

    $("#form2").find('#endDate').val(lastDayWithSlashes);

    document.getElementById('form2').submit();
}