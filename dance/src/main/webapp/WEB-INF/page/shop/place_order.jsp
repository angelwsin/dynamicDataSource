<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/admin_header.jsp"%>
<div class="wrap">
	<div class="shop-order">
		<h2>填写并核对兑换信息</h2>
		<div class="shop-order-wrap">
			<h3>收货人信息</h3>
			<ul>
				<form id="subForm">
					<li><em>*</em><label for="name">收 货 人</label>：<input type="text" name="order.receiveName"></li>
					<li><em>*</em><label for="name">收货地址 </label>：<input type="text" name="order.receiveAddress" class="long"></li>
					<li><em>*</em><label for="name">手机号码</label>：<input type="text" name="order.receivePhone"></li>
					<li><em>*</em><label for="name">邮政编码</label>：<input type="text" name="order.postCode"></li> <input type="hidden" name="order.goodsNum" value="${order.goodsNum}" /> <input type="hidden" name="goods.id" value="${goods.id}" />
				</form>
			</ul>
		</div>
		<div class="shop-order-content">
			<h3>兑换商品信息：</h3>
			<table class="table">
				<tr>
					<th>商品名称</th>
					<th>普通会员积分价</th>
					<th>VIP会员积分价</th>
					<th>数量</th>
					<th>库存数量</th>
				</tr>
				<tr>
					<td><a href="${root}/shop/goods?goods.id=${goods.id}">${goods.goodsName}</a></td>
					<td>${goods.point}</td>
					<td>${goods.vipPoint}</td>
					<td>x ${order.goodsNum}</td>
					<td>${goods.remain}</td>
				</tr>
			</table>
		</div>
		<div class="shop-order-content">
			当前剩余积分：<em>${point.activePoint}</em>分 兑换需要积分：<em>${goods.point*order.goodsNum}</em>分 VIP只需积分：<em>${goods.vipPoint*order.goodsNum}</em>分 <a href="javascript:void(0)" onclick="subForm()"><i>立即兑换</i></a>
		</div>
	</div>
</div>
<x:script>
	<script>
		function subForm() {
			var $form = $("#subForm"), flag = $form.v({
				"order.receiveName" : "required",
				"order.receiveAddress" : "required",
				"order.receivePhone" : "cellphone",
				"order.postCode" : "phoneCode"
			});
			if (flag) {
				$.confirm("确认收货人信息是否无误？", function() {
					$.ajaxMessage("${root}/shop/placeOrder", $form.serialize());
				});
			}
		}
	</script>
</x:script>
<%@ include file="/WEB-INF/page/common/footer.jsp"%>
