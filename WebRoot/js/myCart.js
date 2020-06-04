$(function(){
	$("#allCheckBox").click(function(){
		//1.得到allCheckBox复选框元素的状态（true或者false）
		var isChecked = $("#allCheckBox").is(":checked");
		//设置其它的复选框跟allCheckBox复选框元素的状态一样
		$(".cart_td_1").find("[name=cartCheckBox]").attr("checked",isChecked);
		
	});
	//判断是否全部选中
	$(".cart_td_1").find("[name=cartCheckBox]").click(function(){
		var allCheckBoxs = $(".cart_td_1").find("[name=cartCheckBox]");
		var sum = allCheckBoxs.size();//总共复选框的个数（除llCheckBox复选框）以外
		var k = 0;//计算复选框被选中的个数（计数器）
		allCheckBoxs.each(function(i,dom){
			if($(dom).is(":checked")){
				k++;
			}
		});
		if(sum==k){
			$("#allCheckBox").attr("checked",true);
		}else{
			$("#allCheckBox").attr("checked",false);
		}
	});
	//计算小计，总价，积分
	function productCount(){
		//得到商品相应的行
		var products = $("#shopping").find("tr[id]");
		var zongJia = 0 ;//计算总价
		var jiFen = 0 ;//计算积分（计数器，或者是累加器）
		products.each(function(i,dom){
			//得到其中的一行
			var product = $(dom);
			//得到数量
			var shuLiang = $(dom).children(".cart_td_6").find("input").val();
			//得到单价
			var danJia = $(dom).children(".cart_td_5").text();
			var xiaoJi = shuLiang*danJia;
			//设置到小计单元格里面
			$(dom).children(".cart_td_7").text(xiaoJi);
			zongJia+=xiaoJi;
			jiFen+=$(dom).children(".cart_td_4").text()*shuLiang;
		});
		//设置积分和总价
		$("#total").text(zongJia);
		$("#integral").text(jiFen);
	};
	productCount();
	//点击加1
	$(".cart_td_6").find("img[alt=add]").click(function(){
		var input = $(this).parent().find("input");
		var value  = input.val();
		value++;
		input.val(value);
		productCount();
	});
	
	//点击减1
	$(".cart_td_6").find("img[alt=minus]").click(function(){
		var input = $(this).parent().find("input");
		var value  = input.val();
		value--;
		if(value<=0){
			value=1;
			alert("数量最小是1");
		}
		input.val(value);
		productCount();
	});
	//单行删除
	$(".cart_td_8").find("a").click(function(){
		var isXZ = window.confirm("确定要删除您所选中的商品吗？");
		if(isXZ){
			$(this).parent().parent().prev().remove();
			$(this).parent().parent().remove();
			productCount();
		}
	});
	$("#deleteAll").click(function(){
		//得到商品相应的行
		var products = $("#shopping").find("tr[id]");
		var isXZ = window.confirm("确定要删除您所选中的商品吗？");
		if(isXZ){
			products.each(function(i,dom){
				var tr = $(dom);
				var isChecked  = tr.find("input").is(":checked");
				
				if(isChecked){
					tr.prev().remove();
					tr.remove();
				}
			});
			productCount();
		}
		
	});
});