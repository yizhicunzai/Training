
$(function($){
    //ͼ����ද̬չʾ
    function productList(){
        var list=new Array(
            "�й�����С˵��13880��","�й����ִ�С...��640��","�й��ŵ�С˵��1547��",
            "�Ĵ�������696��","�۰�̨С˵��838��","���С˵��5119��",
            "��̽/����/��...��2519��","���/�ֲ���798��","ħ�ã�369��","�ƻ� ��513��",
            "������574��","���£�726��","��� ��6700��",
            "��ᣨ4855��","���У�949��","������99��","ְ����176��",
            "�ƾ���292��","�ٳ���438��","��ʷ��1329��","Ӱ��С˵��501��",
            "��Ʒ����2019��","����������3273��"
        );
        var html=[];
        $.each(list, function(i, n){
            html.push("<li> ��<a href='#' class='blue'>"+n+"</a></li>");
        });
        $("#product_catList_class").html(html.join(""));
    }
    productList();
    //ͼ�鶯̬չʾ
    function bookList(){
        var catalog=new Array();
        catalog[0] = ['product_list_01.jpg','˽ļ���ײ���¶�ʱ��������ܵĽ���С˵��',4,'���ֽ�','��ɽ���ճ�����', '2009��08��',
            '����ǰ����һ�ι��еĶࡢ��֮ս�У������Ƶҡ��ֿ�Ϊ�׵�˽ļ���𡪽�Ͷ�ʣ�����������Ϊ�׵�˽ļ���𣬴������Э���ʳ���档���ϣ���������Ϊ�׵�˽ļ��������Ͷ�ʱ������壬���½�Ͷ�ʲҰܡ�����...',
            '13.10','59��','��18.90','��32.00'];
        catalog[1] = ['product_list_02.jpg','Ȧ��Ȧ��.1.ս��ƪ',4,'��ǿ','�廪��ѧ������', '2006��01��',
            '��Ȼû�����̣�ȴ��ս����Ѫ�ȣ���Ȼ��δս����ȴ��������ʹ�ࡣ �����һ���ײ��������Ա����Ϊһ�������Ŀ����˾���й���������ϯ�����ڼ�������������ҵ��ж�־��������ʱ�򣬵���������Ƶ�Ȧ�ף�...',
            '��8.90','68��','��19.10','��28.00'];
        var html="";
        $.each(catalog,function(i,n){
            html+="<div class='product_storyList_content_left'><img src=images/"+n[0]+" alt='ͼ���б�'></div>";
            html+="<div class='product_storyList_content_right'><ul>";
            html+="<li class='product_storyList_content_dash'><a href='#' class='blue_14'>"+n[1]+"</a></li>";
            html+="<li>�˿����֣�";
            for(var k=0;k<5;k++){
                if(k<n[2]){
                    html+= "<img src='images/star_red.gif' alt='star'>";
                }
                else{
                    html+= "<img src='images/star_gray.gif' alt='star'>";
                }
            }
            html+="</li>";
            html+="<li>�����ߣ�<a href='#' class='blue_14'>"+n[3]+"</a> ��</li>";
            html+="<li>�����磺<a href='#' class='blue_14'>"+n[4]+"</a></li>";
            html+="<li>����ʱ�䣺"+n[5]+"</li>";
            html+="<li>"+n[6]+"</li>";
            html+="<li> <dl class='product_content_dd'>";
            html+="<dd><img src='images/product_buy_02.gif' alt='shopping'></dd>";
            html+="<dd><img src='images/product_buy_01.gif' alt='shopping'></dd>";
            html+="<dd>��ʡ��"+n[7]+"</dd>";
            html+="<dd>�ۿۣ�<span>"+n[8]+"</span></dd>";
            html+="<dd class='footer_dull_red'><span>"+n[9]+"</span></dd>";
            html+="<dd class='product_content_delete'><span>"+n[10]+"</span></dd>";
            html+="</dl></li></ul></div>";
            html+="<div class='product_storyList_content_bottom'></div>";
        });
        $("#storyBooksssss").html(html);
    }
    bookList();
    //��ȡ�б���ʽList,Ĭ�����б���ʽ�������ȡ���б���ʽ������
    var arrayBookList=$("#product_storyList_content").html();
    //��ȡ��ͼ��ʽList
    function getBigBookList(){
        var $initContent=$("#product_storyList_content");
        var $bookImg = $initContent.find(".product_storyList_content_left");
        var contents="";
        $initContent.find(".product_storyList_content_right").find("ul").each(function(i,ele){
            var div="";
            var content=[div,"<div class='big_img_list'><ul><li class='bookImg'>"+$($bookImg[i]).html()+"</li>"];
            var $li=$(ele).children("li");
            var $price=$($li[6]).find("span");
            content.push("<li><dl><dd class='footer_dull_red'>"
                +$($price[1]).text()+"</dd><dd class='product_content_delete'>"
                +$($price[2]).text()+"</dd><dd class='footer_dull_red'>"
                +$($price[0]).text()+"</dd></dl></li>");//�۸�
            content.push("<li class='detail'>"+$($li[5]).html()+"</li>");//���
            content.push("<li class='detail'>"+$($li[2]).html()+"</li>");//������
            content.push("<li class='detail'>"+$($li[1]).html()+"</li>");//�˿�����
            content.push("<li class='detail'>"+$($li[3]).html()+"</li>");//������
            content.push("<li class='detail'>"+$($li[4]).html()+"</li></ul></div>");//����ʱ��
            contents+=content.join("");
        });
        return contents;
    }
    var bigBookList=getBigBookList();//��ȡ��ͼ��ʽList
    //��ͼ�б��л�
    $("#product_array").children("a").click(function(){
        if($(this).is("[class='click']")) return;//����Ѿ������ô���أ���class���ж�
        $(this).siblings().removeClass("click");
        $(this).addClass("click");
        //��Ԫ�ص�name���ж�
        if($(this).attr("name")=="array"){//�б�
            $("#product_storyList_content").empty().html(arrayBookList);
        }else{//��ͼ
            $("#product_storyList_content").empty().html(bigBookList);
            $("#product_storyList_content").children(".big_img_list").find("ul").mouseover(function(){
                $(this).addClass("over");
                $(this).parent().addClass("over");
            }).mouseout(function(){
                $(this).removeClass("over");
                    $(this).parent().removeClass("over");
            });
        }
    });
});