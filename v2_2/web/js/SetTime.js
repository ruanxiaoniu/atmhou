function settime() {
    var time=new Date();
    var y=time.getFullYear();
    var m=time.getMonth()+1;
    m = m < 10 ? '0' + m : m;
    var d=time.getDate();
    d = d < 10 ? '0' + d: d;
    var h=time.getHours();
    h = h < 10 ? '0' + h: h;
    var min=time.getMinutes();
    min = min < 10 ? '0' +min: min;
    var s=time.getSeconds();
    s= s < 10 ? '0' + s: s;
    var t=y+"-"+m+"-"+d+"  "+h+":"+min+":"+s;
    $("#time").append(t)
    $("#return").click(function(){
        history.back(-1);
    });
};