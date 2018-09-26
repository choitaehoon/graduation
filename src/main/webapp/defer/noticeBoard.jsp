<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@include file="tap.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>메뉴만들기</title>

    <style type="text/css">
        /***** Base Reset Style *****/
        html, body, div, span, applet, object, iframe,h1, h2, h3, h4, h5, h6, p, blockquote, pre,a, abbr, acronym, address, big, cite, code,del, dfn, em, img, ins, kbd, q, s, samp,small, strike, strong, sub, sup, tt, var,b, u, i, center,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr, th, td,article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary,time, mark, audio, video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}
        ol, ul{list-style: none}
        table{border-collapse:collapse;border-spacing:0}
        hr,legend,caption{font-size:0;height:0px}
        a{text-decoration:none;color:inherit}
        a:hover{text-decoration:none}
        img{vertical-align:middle;font-size:11px}
        select{vertical-align:middle}
        textarea{line-height:18px;font-size:12px;color:inherit}

        /***** Work Style *****/
        .wrap{width:800px;margin:0 auto}

        /** boardSearch **/
        .board_search{margin:0 0 15px 0;text-align:right;}
        .board_search > li{display:inline-block;margin:0 0 0 12px;font-size:11px}
        *:first-child+html .board_search > li{display:inline}
        .board_search > li > *{vertical-align:middle}
        .board_search > li input[type="text"]{width:120px;padding:0 4px;height:20px;color:#ffffff;line-height:20px;border:solid 1px #e0e0e0;border-right:none}
        .board_search > li input[type="radio"]{margin:2px 2px 0 0;}
        .board_search > li input[type="submit"]{margin:0;padding:0;width:40px;height:22px;font-size:12px;color:#ffffff;line-height:20px;border:none;background:#333;cursor:pointer}
        .board_search > li label{margin:0 0 0 3px}

        /** orderTable **/
        .board_list{font-size:12px;color:#777}
        .board_list thead tr th{height:30px;color:#fff;font-weight:bold;background:#333;vertical-align:middle}
        .board_list tbody tr td{padding:10px;text-align:center;line-height:18px;border-bottom:solid 1px #eee;vertical-align:middle}
        .board_list tbody tr .tLeft{text-align:left}
        .board_list tbody tr td a{color:#777}
        .board_list tbody .notice td{background:#f6f6f6}
        .board_list tbody tr:hover td{background:#fafafa}

        /** pageNavi **/
        .page_navi{margin-top:40px;font-size:0;text-align:center}
        .page_navi *{display:inline-block;vertical-align:middle}
        .page_navi > a{margin:0 4px;padding:0 5px;height:24px;font-size:12px;color:#ffffff;line-height:23px;border:solid 1px #ccc}
        .page_navi span{margin:0 10px}
        .page_navi span > *{padding:6px;font-size:14px;color:#777}
        .page_navi span > strong{color:#555;font-weight:bold;text-decoration:underline}



    </style>
</head>

<body>

<div class="wrap">
    <h5>공지사항</h5>
    <ul class="board_search">
        <li><input type="radio" name="searchtype" id="search01" checked="checked" /><label for="search01">이름</label></li>
        <li><input type="radio" name="searchtype" id="search02" /><label for="search02">제목</label></li>
        <li><input type="radio" name="searchtype" id="search03" /><label for="search03">내용</label></li>
        <li><input type="text" title="검색어를 입력하세요" /><input type="submit" value="검색" /></li>
    </ul>

    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="공지사항을 나타낸 표" class="board_list">
        <caption>공지사항</caption>
        <colgroup>
            <col style="width:8%" />
            <col style="width:68" />
            <col style="width:12%" />
            <col style="width:12%" />
        </colgroup>
        <thead>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">작성일</th>
        </tr>
        </thead>
        <tbody>
        <tr class="notice">
            <td>공지</td>
            <td class="tLeft"><a href="#">공지사항1</a></td>
            <td>관리자</td>
            <td>2015-09-03</td>
        </tr>
        <tr class="notice">
            <td>공지</td>
            <td class="tLeft"><a href="#">공지사항2</a></td>
            <td>관리자</td>
            <td>2015-09-03</td>
        </tr>
        <tr>
            <td>48</td>
            <td class="tLeft"><a href="#">졸업요건에 관한 질문이요!</a></td>
            <td>김민섭</td>
            <td>2018-09-06</td>
        </tr>
        <tr>
            <td>47</td>
            <td class="tLeft"><a href="#">저도 질문있습니다!</a></td>
            <td>최태훈</td>
            <td>2018-09-13</td>
        </tr>
        <tr>
            <td>46</td>
            <td class="tLeft"><a href="#">졸업이란...</a></td>
            <td>김지은</td>
            <td>2018-09-14</td>
        </tr>
        <tr>
            <td>45</td>
            <td class="tLeft"><a href="#">너무 어렵습니다</a></td>
            <td>이호석</td>
            <td>2018-09-15</td>
        </tr>

        </tbody>
    </table>

    <!-- page_navi start -->
    <div class="page_navi">
        <a href="#" class="first">처음</a>
        <a href="#" class="prev">이전</a>
        <span>
			<strong>1</strong>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
		</span>
        <a href="#" class="next">다음</a>
        <a href="#" class="last">마지막</a>
    </div>
    <!-- page_navi end -->

</div>

</body>
</html>