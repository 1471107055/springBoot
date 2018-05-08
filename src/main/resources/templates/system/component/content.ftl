<#assign ctx=request.contextPath>
<!-- BEGIN PAGE BAR -->
<div class="page-bar">
    <ul class="page-breadcrumb">
        <li>
            <a href="${ctx}/">首页</a>
            <!--<i class="fa fa-circle"></i>-->
        </li>
        <!--<li>
            <span>Dashboard</span>
        </li>-->
    </ul>
</div>
<!-- END PAGE BAR -->
<!-- BEGIN PAGE TITLE-->
<h1 class="page-title"> 订单数据概览
</h1>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN DASHBOARD STATS 1-->
<#--<div class="row">
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 ">
            <div class="display">
                <div class="number">
                    <h3 class="font-green-sharp">
                        <span data-counter="counterup"  class="counter">${newOrder!"0"}</span>
                    </h3>
                    <small>今日新订单量</small>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 ">
            <div class="display">
                <div class="number">
                    <h3 class="font-red-haze">
                        <span data-counter="counterup" class="counter">${dayOrder.number!"0"}</span>
                    </h3>
                    <small>今日完成订单量</small>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 ">
            <div class="display">
                <div class="number">
                    <h3 class="font-blue-sharp">
                        <span data-counter="counterup" class="counter">${dayOrder.money!"0"}</span>
                    </h3>
                    <small>今日成交金额</small>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 ">
            <div class="display">
                <div class="number">
                    <h3 class="font-purple-soft">
                        <span data-counter="counterup"  class="counter">${weekOrder.number!"0"}</span>
                    </h3>
                    <small>周订单量</small>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portlet-body">
    <table class="table table-bordered table-hover">
        <thead>
        <th style="text-align: center;">序号</th>
        <th style="text-align: center;">事项</th>
        <th style="text-align: center;">提示</th>
        <th style="text-align: center;">目标连接</th>
        </thead>
        <tbody>
            <tr style="text-align: center;">
                <td>1</td>
                <td>教师审核申请</td>
                <td>您有<span style="color: red">${applicationCount.teacherApplicationCount}</span>个待审核教师申请</td>
                <td><a href="javascript:void(0)" onclick="application('/application/teacherManager')">教师审核页面</a></td>
            </tr>
            <tr style="text-align: center;">
                <td>2</td>
                <td>医生审核申请</td>
                <td>您有<span style="color: red">${applicationCount.doctorApplicationCount}</span>个待审核医生申请</td>
                <td><a href="javascript:void(0)" onclick="application('/application/physicianManager')">医生审核页面</a></td>
            </tr>
            <tr style="text-align: center;">
                <td>3</td>
                <td>教练审核申请</td>
                <td>您有<span style="color: red">${applicationCount.coachApplicationCount}</span>个待审核教练申请</td>
                <td><a href="javascript:void(0)" onclick="application('/application/coachManager')">教练审核页面</a></td>
            </tr>
            <tr style="text-align: center;">
                <td>4</td>
                <td>教师修改申请</td>
                <td>您有<span style="color: red">${applicationCount.teacherModifyCount}</span>个教师信息修改申请</td>
                <td><a href="javascript:void(0)" onclick="application('/application/teacherManager')">教师审核页面</a></td>
            </tr>
            <tr style="text-align: center;">
                <td>5</td>
                <td>医生修改申请</td>
                <td>您有<span style="color: red">${applicationCount.doctorModifyCount}</span>个医生信息修改申请</td>
                <td><a href="javascript:void(0)" onclick="application('/application/physicianManager')">医生审核页面</a></td>
            </tr>
            <tr style="text-align: center;">
                <td>6</td>
                <td>教练修改申请</td>
                <td>您有<span style="color: red">${applicationCount.coachModifyCount}</span>个教练信息修改申请</td>
                <td><a href="javascript:void(0)" onclick="application('/application/coachManager')">教练审核页面</a></td>
            </tr>
            <tr style="text-align: center;">
                <td>7</td>
                <td>教育（授课）老师修改在线时间与预约课程冲突</td>
                <td>有<span style="color: red">${abnormalOrderCount}</span>个教育预约课程与教师时间冲突</td>
                <td><a href="javascript:void(0)" onclick="application('/order/manager')">订单管理页面（对此类订单做异常标示)</a></td>
            </tr>
        </tbody>
    </table>
</div>-->
<script>
    function application(url) {
        //Layout.init(); // init metronic core componets
        project.path='${ctx}';
        Layout.loadAjaxContent(project.path+url);
    }
</script>


