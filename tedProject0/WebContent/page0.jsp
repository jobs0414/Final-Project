<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 0 pie chart 그리기 -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      //google.charts.setOnLoadCallback(drawChart);
      function drawChart0(v) {
    	v = eval(v);  
        var data = google.visualization.arrayToDataTable(v);

        var options = {
          title: 'Proportion of each Topic',
          is3D: true,
          pieSliceText: 'percentage',
          slices: { 0: {offset: 0.2}},
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart0_3d'));
        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
	    function ajaxReq0(){
		 var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		    	drawChart0(this.responseText);
		    }
		  };
		  xhttp.open("GET", "MainController?command=topic", true);
		  xhttp.send();
		};
  	</script>
  	
  	<button onclick="ajaxReq0()">파이차트 보기</button>
	<div id="piechart0_3d" style="width: 1000px; height: 600px;"></div>
    <button onclick="ajaxFun0('Economy')">워드클라우드 보기</button>
    
<!-- 0 wordCloud 그리기 -->
    <script src="https://d3js.org/d3.v3.min.js"></script>
    <script src="https://rawgit.com/jasondavies/d3-cloud/master/build/d3.layout.cloud.js" type="text/JavaScript"></script>
    
    <script>
       function ajaxFun0(v){
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					//응답된 데이터를 JSON 객체로 변환
					data = eval(this.responseText);
					//wordcloud 그리는 함수의 parameter로 반영
					dataView0(data);
				}
			};
			xhttp.open("GET", "MainController?command=word&topic="+v, true);
			xhttp.send();
		};
       
        var width = 960, height = 500

        var svg = d3.select("body").append("svg")
            .attr("width", width)
            .attr("height", height);
        
        
         function dataView0(data){//사용자 정의 함수
            showCloud(data);
            setInterval(function(){
                 showCloud(data)
            }, 10000) 
         }
        
        wordScale = d3.scale.linear().domain([0, 100]).range([0, 150]).clamp(true);
        var svg = d3.select("svg").append("g").attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");

        function showCloud(data) {
            d3.layout.cloud().size([width, height])
                .words(data)
                .rotate(function (d) {
                    return d.text.length > 3 ? 0 : 0;
                })
                //스케일로 각 단어의 크기를 설정
                .fontSize(function (d) {
                    return wordScale(d.counting);
                })
                //클라우드 레이아웃을 초기화 > end이벤트 발생 > 연결된 함수 작동  
                .on("end", draw)
                .start();

            function draw(words) { 
                var cloud = svg.selectAll("text").data(words)
                //Entering words
                cloud.enter()
                    .append("text")
                    .style("fill-opacity", .5)
                    .attr("text-anchor", "middle") 
                    .attr('font-size', 1)
                    .text(function (d) {
                        return d.text;
                    }); 
                cloud
                    .transition()
                    .duration(600)
                    .style("font-size", function (d) {
                        return d.size + "px";
                    })
                    .attr("transform", function (d) {
                        return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
                    })
                    .style("fill-opacity", 1); 
            }
        }
    </script>
    
</body>
</html>