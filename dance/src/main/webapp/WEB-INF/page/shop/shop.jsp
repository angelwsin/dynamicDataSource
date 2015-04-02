<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/admin_header.jsp"%>
<div class="wrap">
	<div class="shop">
		<div class="shop-left">
			<div class="shop-left-list">
				<h2>全部商品分类</h2>
				<ul>
					<li><a href="${root}/shop/query?goods.goodsType=1">精美礼品</a></li>
					<li><a href="${root}/shop/query?goods.goodsType=2">话费充值</a></li>
					<li><a href="${root}/shop/query?goods.goodsType=3">站内奖励</a></li>
				</ul>
			</div>
			<div class="shop-left-pm">
				<h2>兑换排行榜</h2>
				<ul>
				<c:forEach items="${tops}" var="top">
					<li><a href="${root}/shop/goods?goods.id=${top.id}"><img src="${top.goodsImg_}" /></a><dl><a href="${root}/shop/goods?goods.id=${top.id}"><h3>${top.goodsName_}</h3></a><p>&yen;${top.price}</p></dl></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="shop-right">
			<div class="shop-search">
				<form action="${root}/shop/" id="goodsName">
					<input type="text" name="goods.goodsName" value="${goods.goodsName}" />
				</form>
				<a href="javascript:void(0);" id="search">搜&nbsp;&nbsp;索</a>
			</div>
			<div class="shop-wrap">
				<div class="shop-wrap-search">
					<ul>
						<li>积分筛选：</li>
						<li name="query"><a href="${root}/shop/query?tdIndex=0&goods.goodsType=${goods.goodsType}">全部</a></li>
						<li name="query"><a href="${root}/shop/query?tdIndex=1&goods.goodsType=${goods.goodsType}">1000以下</a></li>
						<li name="query"><a href="${root}/shop/query?tdIndex=2&goods.goodsType=${goods.goodsType}">1001-5000</a></li>
						<li name="query"><a href="${root}/shop/query?tdIndex=3&goods.goodsType=${goods.goodsType}">5001-10000</a></li>
						<li name="query"><a href="${root}/shop/query?tdIndex=4&goods.goodsType=${goods.goodsType}">10001-50000</a></li>
						<li name="query"><a href="${root}/shop/query?tdIndex=5&goods.goodsType=${goods.goodsType}">50001-100000</a></li>
						<li name="query"><a href="${root}/shop/query?tdIndex=6&goods.goodsType=${goods.goodsType}">100000以上</a></li>
					</ul>
				</div>
				<div class="shop-content">
					<ul>
					<c:forEach items="${page.list}" var="good">
						<li><a href="${root}/shop/goods?goods.id=${good.id}"><img src="${good.goodsImg_}" /></a><h3>积分：<em>${good.point}</em></h3><p><a href="${root}/shop/goods?goods.id=${good.id}">${good.goodsName_}</a></p></li>
					</c:forEach>
					</ul>					
				</div>
				<x:page simple="true" />
			</div>
		</div>
	</div>
</div>
<x:script>
	<script>
		$("#signIn").click(function() {
			$.ajaxMessage("${root}/user/signIn");
			$("#signIn").hide();
		});
		$("#search").click(function() {
			$("#goodsName").submit();
		});
		$(function() {
			var $td = $("td[name='query']").eq(${tdIndex});
			$td.addClass("red");
		})
	</script>
</x:script>
<%@ include file="/WEB-INF/page/common/footer.jsp"%>
