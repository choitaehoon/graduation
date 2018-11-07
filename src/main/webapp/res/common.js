//로그인페이지
$('.tabs .tab').click(function () {
    if ($(this).hasClass('signin')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signin-cont').show();
    }
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});
$('.container .bg').mousemove(function (e) {
    var amountMovedX = (e.pageX * -1 / 30);
    var amountMovedY = (e.pageY * -1 / 9);
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
});



// url 이동
// 삭제클릭시 팝업
$(function() {

    $("[data-url]").click(function() {
        var url = $(this).attr("data-url");
        location.href = url;
    })

    $("[data-confirm-delete]").click(function() {
        return confirm("삭제하시겠습니까?");
    })

})

//페이지네이션
$(function() {
    $("div.pagination a").click(function() {
        $("input[name=pg]").val($(this).attr("data-page"));
        $("form").submit();
    });
});


// 엑셀업로드 function
function checkFileType(filePath) {
    var fileFormat = filePath.split(".");
    if (fileFormat.indexOf("xlsx") > -1) {
        return true;
    } else {
        return false;
    }

}

function check() {
    var file = $("#excelFile").val();
    if (file == "" || file == null) {
        alert("파일을 선택해주세요.");
        return false;
    } else if (!checkFileType(file)) {
        alert("엑셀 파일만 업로드 가능합니다.");
        return false;
    }

    if (confirm("업로드 하시겠습니까?")) {
        var options = {
            success : function(data) {
                alert("모든 데이터가 업로드 되었습니다.");

            },
            type : "POST"
        };
        $("#excelUploadForm").ajaxSubmit(options);

    }
}
