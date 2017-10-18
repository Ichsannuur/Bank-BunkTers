<%@ include file="/common/taglibs.jsp"%>
<div class="row">
	<div class="col-md-12">
		<s:actionerror cssClass="alert alert-danger"/>
		<s:actionmessage cssClass="alert alert-success"/>
    	<form action="customerRegistration2" method="post" class="form-layout">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<s:text name="customer.registration"/>
    			</div>
    			<!-- /.panel-heading -->
    			<div class="panel-body">
    				<div class="row">
    					<div class="col-lg-3 col-md-6 col-xs-12">
    						<div class="form-group">
		                        <label><s:text name="account.number"/></label>
		                        <input name="acc_num" type="text" maxlength="8" class="form-control num-only" required="required" autofocus="autofocus" onkeypress="return kodeScript(event,'0123456789',this)"/>
		                    </div>
    					</div>
    				</div>
   					<div class="row">
   						<div class="col-md-12">
   							<button type="submit" class="btn btn-primary">
   								<i class="fa fa-arrow-circle-right"></i>&nbsp;&nbsp; <s:text name="next"/>
   							</button>
   						</div>
   					</div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</form>
	</div>
	<!-- /.col-md-12 -->
</div>
<!-- /.row -->
<!-- Configure the camera -->
<script>
	// Put event listeners into place
	window.addEventListener("DOMContentLoaded", function() {
		// Grab elements, create settings, etc.
		var canvas = document.getElementById('canvas');
		var context = canvas.getContext('2d');
		var video = document.getElementById('video');
		var mediaConfig =  { video: true };
		var errBack = function(e) {
			console.log('An error has occurred!', e)
		};
          
	// Put video listeners into place
          if(navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
              navigator.mediaDevices.getUserMedia(mediaConfig).then(function(stream) {
                  video.src = window.URL.createObjectURL(stream);
                  video.play();
              });
          }

          /* Legacy code below! */
          else if(navigator.getUserMedia) { // Standard
		navigator.getUserMedia(mediaConfig, function(stream) {
			video.src = stream;
			video.play();
		}, errBack);
	} else if(navigator.webkitGetUserMedia) { // WebKit-prefixed
		navigator.webkitGetUserMedia(mediaConfig, function(stream){
			video.src = window.webkitURL.createObjectURL(stream);
			video.play();
		}, errBack);
	} else if(navigator.mozGetUserMedia) { // Mozilla-prefixed
		navigator.mozGetUserMedia(mediaConfig, function(stream){
			video.src = window.URL.createObjectURL(stream);
			video.play();
		}, errBack);
	}

	// Trigger photo take
	document.getElementById('snap').addEventListener('click', function() {
		var image = document.getElementById('canvas');
		// draw cropped image
        var sourceX = 150;
        var sourceY = 0;
        var sourceWidth = image.width;
        var sourceHeight = image.height;
        var destWidth = sourceWidth;
        var destHeight = sourceHeight;
        var destX = canvas.width / 2 - destWidth / 2;
        var destY = canvas.height / 2 - destHeight / 2;
        
        context.drawImage(video, sourceX, sourceY, sourceWidth, sourceHeight, destX, destY, destWidth, destHeight);
		
		var dataURL = canvas.toDataURL("image/jpeg",0.85);
		document.getElementById('result').innerHTML = '<div class="row">'+
		'<div class="col-md-12 text-center">'+
			'<img src="'+dataURL+'" width="75%" id="canvasImg" style="margin-bottom:10px;"/>'+
		'</div>'+
		'<div class="col-md-12 text-center">'+
			'<button type="button" class="btn btn-danger" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i>&nbsp;&nbsp; Close</button>'+
		'</div>'+
		'</div>';
		document.getElementById('base64img').innerHTML = dataURL;
		$('#photo').val('Image has been captured');
	});
}, false);
</script>