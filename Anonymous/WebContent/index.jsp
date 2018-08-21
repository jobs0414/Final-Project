<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>메인 </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">

	var lastID = 0;
	$(document).ready(function() {
		getInfiniteChat();

	});


	function closePage() {
		if (confirm("do you want to erase all the messages?")) {

			var listType = "close";
			$.ajax({
				type : "POST",
				url : "./ChatListServlet",
				data : {
					listType : listType
				},
				success : function(result) {
					if (result == 1) {
					} 

					else {

					}
				}
			});
		}
	}

	function getInfiniteChat() {
		setInterval(function() {
			chatListFunction(lastID);
		}, 1000);

	}



	function submitFunction() {
		var chatName = $('#chatName').val();
		var chatContent = $('#chatContent').val();

		$.ajax({
			type : "POST",
			url : "./ChatSubmitServlet",
			data : {

				chatName : encodeURIComponent(chatName),
				chatContent : encodeURIComponent(chatContent)

			},

			success : function(result) {
				if (result == 1) {

					autoClosingAlert('#successMessage', 100000);
				} else if (result == 0) {

					autoClosingAlert('#dangerMessage', 100000);
				} else {
					autoClosingAlert('#warningMessage', 100000);

				}

			}

		});

		$('#chatContent').val('');

	}


	function autoClosingAlert(selecter, delay) {
		var alert = $(selecter).alert();
		alert.show();
		window.setTimeout(function() {
			alert.hide()

		}, delay);

	}

	function chatListFunction(type) {
		var chatName = $('#chatName').val();
		var chatContent = $('#chatContent').val();
		$.ajax({
			type : "POST",
			url : "./ChatListServlet",
			data : {

				listType : type,

			},

			success : function(data) {

				if (data == "")

					return;

				var parsed = JSON.parse(data);
				var result = parsed.result;
				for (var i = 0; i < result.length; i++) {
					addChat(result[i][0].value, result[i][1].value,

							result[i][2].value);

				}
				lastID = Number(parsed.last);
			}
		});

	}

	function addChat(chatName, chatContent, chatTime) {

		$('#chatList')

				.append(
						'<div class="row">'
								+ '<div class="col-lg-12">'
								+ '<div class="media">'
								+ '<a class="pull-left" href="#">'
								+ '<img class="media-object img-circle" src = "images/icon.jpg" alt="">'
								+ '</a>' + '<div class="media-body">'
								+ '<h4 class="media-heading">' + chatName
								+ '<span class="small pull-right">' + chatTime
								+ '</span>' + '</h4>' + '<p>' + chatContent
								+ '</p>' + '</div>' + '</div>' + '</div>'
								+ '</div>' + '<br>');

		$('#chatList').scrollTop($('#chatList')[0].scrollHeight);

	}

</script>

</head>

<body onUnload="closePage();">
	<div class="container">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="panel-heading">
							<div class="portlet-title">

								<h4>

									<i class="fa fa-circle text-green">Chat</i>

								</h4>
							</div>
							<div class="clearfix"></div>

						</div>

						<div id="chat" class="panel-cpllapse collapse in">
							<div id="chatList" class="portlet-body chat-widget"
								style="overflow-y: auto; width: auto; height: 300px;">


							</div>

							<div class="portlet-footer">

								<div class="row">

									<div class="form-group col-xs-4">

										<input style="height: 40px;" type="text" id="chatName"
											class="form-control" placeholder="name" maxlength="20">
									</div>
								</div>
								<div class="row" style="height: 90px">
									<div class="form-group col-xs-10">

										<textarea style="heigh: 80px" ; id="chatContent"
											class="form-control" placeholder="Message" maxlength="100"></textarea>
									</div>
									<div class="form-group col-xs-2">

										<button type="button" class="btn btn-default pull-right"
											onClick="submitFunction();">Submit</button>
										<div class="clearfix"></div>
									</div>
								</div>

								<!-- alert -->

								<div class="alert alert-success" id="successMessage"
									style="display: none;">

									<strong>Successfully send the message</strong>

								</div>

								<div class="alert alert-danger" id="dangerMessage"
									style="display: none;">

									<strong>Fill out all the blanks</strong>

								</div>

								<div class="alert alert-warning" id="warningMessage"
									style="display: none;">

									<strong>DATABASE ERROR</strong>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html> 