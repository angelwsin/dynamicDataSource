<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/admin_header.jsp"%>
<div class="wrap">
	<div class="tools">
		<h2>收益计算器</h2>
		<div class="tools-content">		
			<p>使用收益计算器，帮您计算一下借款的总成本，包括每月需要偿还的金额及月利率等；同时，一份完整的还款计划时间表让您更好地了解还款的情况。${_siteConfig.siteName}采用的是通用的"等额本息还款法"，即借款人每月以相等的金额偿还贷款本息。</p>
			<h3>借款设置</h3>
			<div class="calc-form">
				<form id="calcForm">
					<label>借款金额：</label>
					<div class="input-group"><input name="account" type="text" maxlength="11" /><div class="unit">元</div></div>
					<label>年利率：</label>
					<div class="input-group"><input name="apr" type="text" maxlength="5" class="small" /><div class="unit">%</div></div>
					<label>借款期限：</label>
					<div class="input-group"><input name="borrowLimit" type="text" maxlength="2" class="small" /><div class="unit">月</div></div> 
					<label>还款方式：</label>
					<x:select name="style" metaType="borrowStyle" headerLabel="" />
				</form>
			</div>
			<div class="tools-bar"><a id="calc" href="javascript:;">开始计算</a></div>
			<div id="calcDetail">
				<h3>还款时间表</h3>
				<p id="calcStat">当前借款需要还款<span id="calcPeriod" class="highlight">0</span>期，还款金额共计<span id="calcAccount" class="highlight">0.00</span>元。</p>
				<table>
					<thead>
						<tr>
							<th>月份</th>
							<th>月偿还本息</th>
							<th>月偿还本金</th>
							<th>月偿还利息</th>
							<th>剩余偿还本息</th>
						</tr>
					</thead>
					<tbody id="detailTable"></tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<x:script>
<script>
$(function(){
	var $form = $("#calcForm");
	$("#calc").click(function(){
		var flag = $form.v({
			account: {
				format: "number/money",
				range: "[500,10000000]",
				message: "必须是最多带有两位小数、且在500~10000000之间的数字"
			},
			apr: {
				format: "number/money",
				range: "(0,24]",
				message: "必须大于0，且不大于24!"
			},
			borrowLimit: {
				format: "number",
				range: "(0,36]"
			}			
		});
		if(flag){
			$.ajaxMessage("", $form.serialize(), function(json){
				showTable(json);
			}, false);
		}
	});
});
function showTable(data){
	if(!data) return;
	var html = "";
	for(var i = 1; i <= data.total.period; i++){
		html += appendTr(i, data["p" + i]);
	}
	$("#calcPeriod").html(data.total.period);
	$("#calcAccount").html(data.total.repaymentAccount);
	$("#detailTable").html(html);
	$("#calcDetail").show();
}
function appendTr(seq, row){
	var html = "<tr>";
	html += "<td>" + seq + "</td>";
	html += "<td>" + row.repaymentAccount + "</td>";
	html += "<td>" + row.capital + "</td>";
	html += "<td>" + row.repaymentInterest + "</td>";
	html += "<td>" + row.remainAccount + "</td>";
	html += "</tr>";
	return html;
}
</script>
</x:script>
<%@ include file="/WEB-INF/page/common/footer.jsp"%>
