<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/header.jsp"%>
<x:js path="user-guide.js" loadFromConfig="false" />
<div id="content">
	<div id="guide_box">
		<div class="page guide_main">
			<div id="menu_box">
				<div id="guide_menu">
					<h2></h2>
					<ul>
						<li class="current"><a href="#set1">第一步：注册</a></li>
						<li><a href="#set2">第二步：充值</a></li>
						<li><a href="#set3">第三步：投资</a></li>
						<li><a href="#set4">第四步：提现</a></li>
					</ul>
				</div>
			</div>
			<div class="xs-top">
				<a name="set1"></a>
				<div class="xs-left" id="1" name="1">
					<div class="xs-bot">
						<dl class="zhuche">
							<dt>
								<img src="${root}/public/upload/image/zhuche1.png" />
							</dt>
							<dd>首先注册成为${_siteConfig.siteName}会员</dd>
						</dl>
						<span><a href="${root}/user/register"><img src="${root}/public/upload/image/zhucheng.png" /></a></span>
					</div>
					<p>注册成功后，即可获得${_siteConfig.siteName}见面礼包</p>
				</div>
				<div class="xs-right">
					<img src="${root}/public/upload/image/manhuai1.png" />
				</div>
			</div>
			<div class="xs-center">
				<a name="set2"></a>
				<div class="xs-l-f" id="2" name="2">
					<dl class="chongzhi">
						<dt>
							<img src="${root}/public/upload/image/zhuche.png" />
						</dt>
						<dd>到会员中心充值</dd>
					</dl>
					<span><img src="${root}/public/upload/image/chongzhi.png" /></span>
				</div>
				<div class="xs-l-r">
					<span><img src="${root}/public/upload/image/manhuai2.png" /></span>
					<ul class="caozhu">
						<p>操作：</p>
						<li>1. 点击“充值”；</li>
						<li>2. 到充值后台输入充值的金额；</li>
						<li>3. 充值成功后可到后台查看余额。</li>
					</ul>
				</div>
			</div>
			<div class="xs-cont-var">
				<a name="set3"></a>
				<div class="xs-l-t" id="3" name="3">
					<dl class="chongzhi">
						<dt>
							<img src="${root}/public/upload/image/zhuche3.png" />
						</dt>
						<dd>选择适合自己的投资产品</dd>
					</dl>
					<div class="xs-l-b">
						<ul class="cao-hu">
							<p>操作：</p>
							<li>1. 点击官网首页“我要理财”；</li>
							<li>2. 选择适合自己的理财产品<br />(有1个月／3个月／6个月/1年的理财产品)；
							</li>
							<li>3. 点击“马上投标”进入产品的详细页面；</li>
							<li>4. 使用您账户上的现金投资，赚更多的收益。</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="x-flt">
				<a name="set4"></a>
				<div class="x-tong" id="4" name="4">
					<dl class="chongzhi">
						<dt>
							
						</dt>
						<dd>到会员中心提现</dd>
					</dl>
					<span><img src="${root}/public/upload/image/lixi.png" /></span>
				</div>
				<div class="x-tong-right">
					<ul class="cao-to">
						<p>操作：</p>
						<li>1. 资金回款当天会有短信提示；</li>
						<li>2. 可到“会员中心”查看回款金额；</li>
						<li>3. 可到“投资管理”查看回款详情；</li>
						<li>4. 回款可选择提现或继续投资；</li>
						<li>5. 继续投资，利滚利，循环投资；</li>
						<li>6. 收益节节高。</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/page/common/footer.jsp"%>
