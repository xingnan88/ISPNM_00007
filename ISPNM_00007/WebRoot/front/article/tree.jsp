<%@ page language="java" pageEncoding="gbk"%>

<html>
	<head>
		<title>���β˵�ʵ��</title>
		<script language="JavaScript" type="text/javascript">   
		    function goback(obj){  

				var url = obj.href;
				var params = url.split("?")[1];
				var values = params.split("=")[1];

		    	window.opener.document.getElementById("classId").value = values;   
		    	window.close();   
   			}   
  		</script>
		<script language="JavaScript" type="text/JavaScript">
function showhide_obj(obj,icon)
{
obj=document.getElementById(obj);
icon=document.getElementById(icon);
 if (obj.style.display=="none") 
  { 
        //ָ���ĵ��еĶ���Ϊdiv,��������IE;   
        div_list = document.getElementsByTagName("div");
        for (i=0; i< div_list.length;i ++)
        {
          thisDiv = div_list[i]; 
           if(thisDiv.id.indexOf("title")!=-1)//���ĵ�div�е�id����listʱ,��charAt����;
           {
            //ѭ�������в˵����Ӷ���������
           thisDiv.style.display="none";
           icon.innerHTML = "+";
           }
        } 
 
   myfont=document.getElementsByTagName("font");
   for(i=0;i<myfont.length;i++)
    {
    thisfont = myfont[i];
   }
    icon.innerHTML="-";
    obj.style.display=""; //ֻ��ʾ��ǰ����
}
 else
  {
  //��ǰ�����Ǵ򿪵ģ��͹ر���;
   icon.innerHTML="+";
   obj.style.display="none";
   }
 }

function show_this(obj)
{
    obj=document.getElementById(obj);
    if (obj.id==obj.id) 
     {
       blinkicon=document.getElementsByTagName("font");
       for(x=0;x<blinkicon.length;x++)
        {
           if( blinkicon[x].id.indexOf("select")!=-1 && obj.id!=obj )
            {
               blinkicon[x].innerHTML=" ";
            }
        }
          obj.innerHTML=">"; 
     }
     else
     {
           obj.innerHTML=" ";
     }
}
//-->
</script>
		<style type="text/css">
span {
	width: 100px;
	Height: 25px;
	margin-left: 15px;
}

font {
	font-weight: bold;
}

body,td {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #000000;
}

div {
	cursor: default;
	border-top: 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px solid gray;
	background-color: #F6F6F6;
	width: 200px;
}

pre {
	background-color: #FFFFF1;
	border: 1px solid gray;
	color: blue;
	font-family: verdana; Arial;
	padding: 20px;
}
</style>
	</head>
	<body>
		<div style="line-height: 25px;"
			onClick="showhide_obj('title1','icon1')">
			<font id='icon1'>+</font>T ��ҵ����
		</div>
		<div id="title1"
			style="background-color: #fffff3; line-height: 22px; display: none;">
			<span id="menu1_1" onclick="show_this('select1_1')"><font 
				id='select1_1'></font><a href="feature/SeniorSearchArticle.jsp?classId=TB" onclick="goback(this)">TB һ�㹤ҵ����</a> </span>
			<br />
			<span id="menu1_2" onclick="show_this('select1_2')"><font
				id='select1_2'></font><a href="feature/SeniorSearchArticle.jsp?classId=TD" onclick="goback(this)">TD ��ҵ����</a> </span>
			<br />
			<span id="menu1_3" onclick="show_this('select1_3')"><font
				id='select1_3'></font><a href="feature/SeniorSearchArticle.jsp?classId=TE" onclick="goback(this)">TE ʯ�͡���Ȼ����ҵ</a> </span>
			<br />
			<span id="menu1_4" onclick="show_this('select1_4')"><font
				id='select1_4'></font><a href="feature/SeniorSearchArticle.jsp?classId=TF" onclick="goback(this)">TF ұ��ҵ</a> </span>
			<br />
			<span id="menu1_5" onclick="show_this('select1_5')"><font
				id='select1_5'></font><a href="feature/SeniorSearchArticle.jsp?classId=TG" onclick="goback(this)">TG ����ѧ����������</a> </span>
			<br />
			<span id="menu1_6" onclick="show_this('select1_6')"><font
				id='select1_6'></font><a href="feature/SeniorSearchArticle.jsp?classId=TH" onclick="goback(this)">TH ��е���Ǳ�ҵ</a> </span>
			<br />
			<span id="menu1_7" onclick="show_this('select1_7')"><font
				id='select1_7'></font><a href="feature/SeniorSearchArticle.jsp?classId=TJ" onclick="goback(this)">TJ ������ҵ</a> </span>
			<br />
			<span id="menu1_8" onclick="show_this('select1_8')"><font
				id='select1_8'></font><a href="feature/SeniorSearchArticle.jsp?classId=TK" onclick="goback(this)">TK ��������</a> </span>
			<br />
			<span id="menu1_9" onclick="show_this('select1_9')"><font
				id='select1_9'></font><a href="feature/SeniorSearchArticle.jsp?classId=TL" onclick="goback(this)">TL ԭ���ܼ���</a> </span>
			<br />
			<span id="menu1_10" onclick="show_this('select1_10')"><font
				id='select1_10'></font><a href="feature/SeniorSearchArticle.jsp?classId=TM" onclick="goback(this)">TM �繤����</a> </span>
			<br />
			<span id="menu1_11" onclick="show_this('select1_11')"><font
				id='select1_11'></font><a href="feature/SeniorSearchArticle.jsp?classId=TN" onclick="goback(this)">TN ���ߵ����ѧ�����ż���</a>
			</span>
			<br />
			<span id="menu1_12" onclick="show_this('select1_12')"><font
				id='select1_12'></font><a href="feature/SeniorSearchArticle.jsp?classId=TP" onclick="goback(this)">TP �Զ������������㼼��</a>
			</span>
			<br />
			<span id="menu1_13" onclick="show_this('select1_13')"><font
				id='select1_13'></font><a href="feature/SeniorSearchArticle.jsp?classId=TQ" onclick="goback(this)">TQ ��ѧ��ҵ</a> </span>
			<br />
			<span id="menu1_14" onclick="show_this('select1_14')"><font
				id='select1_14'></font><a href="feature/SeniorSearchArticle.jsp?classId=TS" onclick="goback(this)">TS �Ṥҵ���ֹ�ҵ</a> </span>
			<br />
			<span id="menu1_15" onclick="show_this('select1_15')"><font
				id='select1_15'></font><a href="feature/SeniorSearchArticle.jsp?classId=TU" onclick="goback(this)">TU ������ѧ</a> </span>
			<br />
			<span id="menu1_16" onclick="show_this('select1_16')"><font
				id='select1_16'></font><a href="feature/SeniorSearchArticle.jsp?classId=TV" onclick="goback(this)">TV ˮ������</a> </span>
			<br />
		</div>
	</body>
</html>