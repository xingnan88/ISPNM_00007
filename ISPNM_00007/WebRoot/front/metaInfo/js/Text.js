var Mar = document.getElementById("Marquee");
	var child_div=Mar.getElementsByTagName("div")
	var picH = 200;//�ƶ��߶�
	var scrollstep=1;//�ƶ�����,Խ��Խ��
	var scrolltime=50;//�ƶ�Ƶ��(����)Խ��Խ��
	var stoptime=1000;//���ʱ��(����)
	var tmpH = 0;
	Mar.innerHTML += Mar.innerHTML;
	function start(){
		if(tmpH < picH){
			tmpH += scrollstep;
			if(tmpH > picH )tmpH = picH ;
			Mar.scrollTop = tmpH;
			setTimeout(start,scrolltime);
		}else{
			tmpH = 0;
			Mar.appendChild(child_div[0]);
			Mar.scrollTop = 0;
			setTimeout(start,stoptime);
		}
	}
	onload=function(){setTimeout(start,stoptime)};