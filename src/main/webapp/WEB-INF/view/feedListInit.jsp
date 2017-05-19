<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--
  ~ Copyright (C) 2017 Baidu, Inc. All Rights Reserved.
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/htm/loose.dtd">
<html>
<head>
    <meta charset="utf-8"/>
    <title>Feed潜客</title>

    <!-- basic styles -->

    <link rel="stylesheet" href="/Nakri/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/Nakri/css/font-awesome.min.css"/>

    <link rel="stylesheet" href="/Nakri/css/jquery-ui-1.10.3.full.min.css"/>
    <link rel="stylesheet" href="/Nakri/css/ace.min.css"/>
    <link rel="stylesheet" href="/Nakri/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="/Nakri/css/ace-skins.min.css"/>

    <script src="/Nakri/js/ace-extra.min.js"></script>
    <!--[if IE 7]>
    <link rel="stylesheet" href="/Nakri/css/font-awesome-ie7.min.css"/>
    <![endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"/>


    <!-- ace styles -->

    <link rel="stylesheet" href="/Nakri/css/ace.min.css"/>
    <link rel="stylesheet" href="/Nakri/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="/Nakri/css/ace-skins.min.css"/>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="/Nakri/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="/Nakri/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="/Nakri/js/html5shiv.js"></script>
    <script src="/Nakri/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<jsp:include page="top.jsp"></jsp:include>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="nav nav-list">
                <li class="active open">
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-list"></i>
                        <span class="menu-text"> 潜客分析 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>
                    <ul class="submenu">
                        <li class="active">
                            <a href="/Nakri/feed/feedList">
                                <i class="icon-double-angle-right"></i>
                                潜客管理
                            </a>
                        </li>
                        <li>
                            <a href="/Nakri/feed/feedList">
                                <i class="icon-double-angle-right"></i>
                                销售管理
                            </a>
                        </li>
                        <li>
                            <a href="/Nakri/feed/feedList">
                                <i class="icon-double-angle-right"></i>
                                成单管理
                            </a>
                        </li>
                        <%--<li>
                            <a href="/Nakri/cust/showScore">
                                <i class="icon-double-angle-right"></i>
                                积分明细
                            </a>
                        </li>--%>
                    </ul>
                </li>
            </ul>

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>

        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>

                    <li>
                        <a href="#">查询资料</a>
                    </li>

                </ul><!-- .breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="icon-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- #nav-search -->
            </div>

            <div class="page-content">


                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row12">
                            <div class="well">
                                <form action="#" method="post" id="queryForm" class="form-inline">
                            <span class="input-icon align-middle">
                            客户名称：
                            <input id="companyName" name="companyName" type="text" class="search-query"
                                   placeholder="输入客户名称"/>
                            </span>
                                    &nbsp;
                                    <span class="input-icon align-middle">
                            意向度得分：
                            <select class="form-control-inline" id="operType" name="operType">
                                    <option value="-1" selected>请选择</option>
                                    <option value="1">大于</option>
                                    <option value="2">小于</option>
                                    <option value="3">等于</option>
                                </select>
                                         <input id="score" name="score" type="text" class="search-query"
                                                placeholder="请输入分值"/>
                            </span>
                                    &nbsp;
                                    <button class="btn btn-sm" type="submit">
                                        <i class="icon-search"></i>查询
                                    </button>
                                    <a href="#" class="btn btn-sm btn-info">
                                        <i class="icon-edit"></i>分析
                                    </a>
                                </form>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-responsive">
                                    <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th class="center">
                                            <td class="center">
                                                <label>
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            </th>
                                            <th>公司名称</th>
                                            <th>所属行业</th>
                                            <th>地域</th>
                                            <th>是否来电咨询</th>
                                            <th>是否做过推广</th>
                                            <th>竞品投放广告</th>
                                            <th>资料来源</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${feedList}" var="p">
                                            <tr>
                                                <td class="center">
                                                    <label>
                                                        <input type="checkbox" class="ace"/>
                                                        <span class="lbl"></span>
                                                    </label>
                                                </td>

                                                <td>
                                                    <a href="#">${p.companyName}</a>
                                                </td>

                                                <td>
                                                    <a href="#">${p.trade}</a>
                                                </td>

                                                <td>
                                                    <a href="#">${p.address}</a>
                                                </td>
                                                <td>
                                                    <c:if test="${p.isCall== 0}">
                                                        <span class="label label-sm label-warning">Y</span>
                                                    </c:if>
                                                    <c:if test="${p.isCall == 1}">
                                                        <span class="label label-sm label-success">N</span>
                                                    </c:if>

                                                </td>
                                                <td class="hidden-480">
                                                    <c:if test="${p.isTuiguang== 0}">
                                                        <span class="label label-sm label-info arrowed arrowed-righ">Y</span>
                                                    </c:if>
                                                    <c:if test="${p.isTuiguang == 1}">
                                                        <span class="label label-sm label-inverse arrowed-in">N</span>
                                                    </c:if>

                                                </td>
                                                <td class="hidden-480">
                                                    <c:if test="${p.isCompetitor== 0}">
                                                        <span class="label label-sm label-info arrowed arrowed-righ">Y</span>
                                                    </c:if>
                                                    <c:if test="${p.isCompetitor == 1}">
                                                        <span class="label label-sm label-inverse arrowed-in">N</span>
                                                    </c:if>

                                                </td>
                                                <td>CDC</td>
                                                <td></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div id="modal-table" class="modal fade" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            Results for "Latest Registered Domains
                                        </div>
                                    </div>

                                    <div class="modal-body no-padding">
                                        <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                            <thead>
                                            <tr>
                                                <th>Domain</th>
                                                <th>Price</th>
                                                <th>Clicks</th>

                                                <th>
                                                    <i class="icon-time bigger-110"></i>
                                                    Update
                                                </th>
                                            </tr>
                                            </thead>

                                            <tbody>
                                            <tr>
                                                <td>
                                                    <a href="#">ace.com</a>
                                                </td>
                                                <td>$45</td>
                                                <td>3,330</td>
                                                <td>Feb 12</td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <a href="#">base.com</a>
                                                </td>
                                                <td>$35</td>
                                                <td>2,595</td>
                                                <td>Feb 18</td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <a href="#">max.com</a>
                                                </td>
                                                <td>$60</td>
                                                <td>4,400</td>
                                                <td>Mar 11</td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <a href="#">best.com</a>
                                                </td>
                                                <td>$75</td>
                                                <td>6,500</td>
                                                <td>Apr 03</td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <a href="#">pro.com</a>
                                                </td>
                                                <td>$55</td>
                                                <td>4,250</td>
                                                <td>Jan 21</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                            <i class="icon-remove"></i>
                                            Close
                                        </button>

                                        <ul class="pagination pull-right no-margin">
                                            <li class="prev disabled">
                                                <a href="#">
                                                    <i class="icon-double-angle-left"></i>
                                                </a>
                                            </li>

                                            <li class="active">
                                                <a href="#">1</a>
                                            </li>

                                            <li>
                                                <a href="#">2</a>
                                            </li>

                                            <li>
                                                <a href="#">3</a>
                                            </li>

                                            <li class="next">
                                                <a href="#">
                                                    <i class="icon-double-angle-right"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div><!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div><!-- /.main-content -->


    </div><!-- /.main-container-inner -->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='/Nakri/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<!-- basic scripts -->
<script type="text/javascript" src="/Nakri/js/jquery-2.0.3.min.js"></script>

<script src="/Nakri/js/bootstrap.min.js"></script>
<script src="/Nakri/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="/Nakri/js/jquery.dataTables.min.js"></script>
<script src="/Nakri/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->

<script src="/Nakri/js/ace-elements.min.js"></script>
<script src="/Nakri/js/ace.min.js"></script>

<script src="/Nakri/js/bootstrap.min.js"></script>
<script src="/Nakri/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="/Nakri/js/jquery-ui-1.10.3.full.min.js"></script>
<script src="/Nakri/js/jquery.ui.touch-punch.min.js"></script>

<!-- ace scripts -->

<script src="/Nakri/js/ace-elements.min.js"></script>
<script src="/Nakri/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    $('.doreach').on('click', function () {
        var custId = $(this).data('id') || '';
        if (!custId) {
            return false;
        }
        $.ajax({
            url: '/Nakri/upStreamReach/reach',
            method: 'GET',
            data: {
                custIds: custId
            }
        }).done(function (res) {
            alert(res.status === 0 ? res.data : res.statusInfo);
        });
    });

    jQuery(function ($) {
        var oTable1 = $('#sample-table-2').dataTable({
            "aoColumns": [
                {"bSortable": false},
                null, null, null, null, null,
                {"bSortable": false}
            ]
        });


        $('table th input:checkbox').on('click', function () {
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                    .each(function () {
                        this.checked = that.checked;
                        $(this).closest('tr').toggleClass('selected');
                    });

        });
//override dialog's title function to allow for HTML titles
        $.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
            _title: function (title) {
                var $title = this.options.title || '&nbsp;'
                if (("title_html" in this.options) && this.options.title_html == true)
                    title.html($title);
                else title.text($title);
            }
        }));
        $(".icon-envelope").on('click', function (e) {
            e.preventDefault();

            var dialog = $("#dialog-message").removeClass('hide').dialog({
                modal: true,
                title: "<div class='widget-header widget-header-small'><h6 class='smaller'><i class='icon-ok'></i> 设置营销参数</h6></div>",
                title_html: true,
                buttons: [
                    {
                        text: "Cancel",
                        "class": "btn btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    },
                    {
                        text: "OK",
                        "class": "btn btn-primary btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    }
                ]
            });

            /**
             dialog.data( "uiDialog" )._title = function(title) {
						title.html( this.options.title );
					};
             **/
        });


        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }
    })
</script>
</body>
</html>
