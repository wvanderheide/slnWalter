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
    if ($.trim($('#startDate').val()) === '') {
        alert('Pick a start date.')
    }
    else if ($.trim($('#endDate').val()) === '') {
        alert('Pick an end date.')
    }
    else {
        document.getElementById('form1').submit();
    }
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