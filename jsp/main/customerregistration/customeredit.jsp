<%@ include file="/common/taglibs.jsp"%>
<div class="row">
	<div class="col-md-12">
		<s:actionerror cssClass="alert alert-danger"/>
		<s:actionmessage/>
    	<form action="customerRegistrationSave" method="post" class="form-layout">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				Customer Registration
    			</div>
    			<!-- /.panel-heading -->
    			<div class="panel-body">
    				<s:iterator value="custlist" var="tb"></s:iterator>
    				<div class="row">
    					<div class="col-lg-3 col-md-6 col-xs-12">
    						<div class="form-group">
		                        <label>Account Number</label>
		                        <input type="text" value="<s:text name="#tb.ID"/>" name="id" hidden="hidden"/>
		                        <input name="acc_num" type="text" maxlength="8" class="form-control num-only" 
		                        	required="required" value="<s:text name="#tb.ACCNUM"/>" readonly="readonly"/>
		                    </div>
    					</div>
    					<div class="col-lg-9 col-md-12">
    						<div class="form-group">
		                        <label>Fullname</label>
		                        <input name="name" type="text" class="form-control" autofocus="autofocus" 
		                        required="required" maxlength="40" 
		                        onkeypress="return kodeScript(event, 'qwertyuiopasdfghjklzxcvbnm ', this)"
		                        value="<s:text name="#tb.NAME"/>" >
		                    </div>
    					</div>
    					<div class="col-lg-3 col-xs-12">
    						<div class="form-group">
                                <label>Gender</label>
                                <div class="radio">
                                    <label><input type="radio" name="gender" value="L" required="required"
                                    <c:if test="${tb.GENDER == 'L'}">checked</c:if> > Male</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="gender" value="P" required
                                    <c:if test="${tb.GENDER == 'P'}">checked</c:if> > Female</label>
                                </div>
                            </div>
    					</div>
    					<div class="col-lg-3 col-xs-12">
    						<div class="form-group">
		                        <label>Religion</label>
		                        <select class="form-control" name="religion" required="required">
		                        	<option></option>
		                        	<option value="Islam" <c:if test="${tb.RELIGION == 'Islam'}">selected</c:if> >Islam</option>
		                        	<option value="Katolik" <c:if test="${tb.RELIGION == 'Katolik'}">selected</c:if> >Katolik</option>
		                        	<option value="Kristen" <c:if test="${tb.RELIGION == 'Kristen'}">selected</c:if> >Kristen</option>
		                        	<option value="Buddha" <c:if test="${tb.RELIGION == 'Buddha'}">selected</c:if> >Buddha</option>
		                        	<option value="Hindu" <c:if test="${tb.RELIGION == 'Hindu'}">selected</c:if> >Hindu</option>
		                        	<option value="Konghucu" <c:if test="${tb.RELIGION == 'Konghucu'}">selected</c:if> >Konghucu</option>
		                        </select>
		                    </div>
    					</div>
    				</div>
    				<div class="row">
    					<div class="col-lg-8 col-md-6 col-xs-12">
    						<div class="form-group">
		                        <label>Address</label>
		                        <textarea name="address" class="form-control" 
		                        rows="4" cols="100" required="required" maxlength="100"
		                        ><s:text name="#tb.ADDRESS"/></textarea>
		                    </div>
    					</div>
    				</div>
    				<div class="row">
    					<div class="col-lg-6 col-md-6 col-xs-12">
    						<div class="form-group">
    							<label>Photo</label>
    							<div class="row">
    								<s:url id="img" action="showImage"><s:param name="id" value="#tb.ID"></s:param></s:url>
    								<div class="col-xs-6 col-md-3">
    									<span class="thumbnail">
    										<img src="<s:property value="#img" />">
    									</span>
    								</div>
    								<span id="thumbnail">
    								</span>
    							</div>
    							<div class="btn-group">
    						 		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
	                                	<i class="fa fa-camera"></i>&nbsp;&nbsp; Camera
	                            	</button>
	                            	<button type="button" class="btn btn-warning" id="reset">
	                                	<i class="fa fa-refresh"></i>&nbsp;&nbsp; Reset
	                            	</button>
    						 	</div><!-- /input-group -->
    						</div>
    						<textarea name="base64img" id="base64img" hidden="hidden"></textarea>
   						 	<!-- Modal -->
   						 	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
   						 		<div class="modal-dialog">
   						 			<div class="modal-content">
   						 				<div class="modal-header">
    						 				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    						 				<h4 class="modal-title" id="myModalLabel">Camera</h4>
    						 			</div>
    						 			<div class="modal-body">
                                            <div class="row">
						    					<div class="col-md-8">
						    						<div style="width:360px;height:480px;overflow:hidden;display:block;margin:0 auto;">
														<video id="video" autoplay style="margin-left:-150px;"></video>
													</div>
												</div>
						    					<div class="col-md-4">
						    						<div class="row">
						    							<div class="col-md-12">
						    							<button type="button"  id="snap" autofocus="autofocus"
						    								style="display:block;margin-left:auto;margin-right:auto;" 
						    								class="btn btn-primary take">
															<i class="fa fa-camera"></i>&nbsp;&nbsp; Take Picture
														</button>
						    							</div>
						    						</div>
						    						<div class="row" style="margin-top:10px;">
						    							<div class="col-md-12 text-center">
						    							<canvas id="canvas" width="360" height="480" hidden="hidden"></canvas>
						    							<span id="result">Your Image should Be Here...</span>
						    							</div>
						    						</div>
						    					</div>
						    				</div>
                                        </div>
   						 			</div>
   						 		</div>
   						 	</div>
	                    </div>
   					</div>
   					<div class="row">
   						<div class="col-md-12 text-center">
   							<button type="submit" class="btn btn-primary">
   								<i class="fa fa-save"></i>&nbsp;&nbsp; Save Customer
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
		document.getElementById('thumbnail').innerHTML = '<div class="col-xs-6 col-md-3">'+
			'<p class="text-center">'+
			'<br>'+
			'<i class="fa fa-long-arrow-right fa-5x"></i>'+
			'<br>Replace with'+
			'</p>'+
			'</div>'+
			'<div class="col-xs-6 col-md-3">'+
			'<div class="thumbnail">'+
			'<img src="'+dataURL+'">'+
			'</div>'+
			'</div>';
	});
	document.getElementById('reset').addEventListener('click', function() {
		document.getElementById('result').innerHTML = "Your Image should Be Here...";
		document.getElementById('base64img').innerHTML = "";
		document.getElementById('thumbnail').innerHTML = "";
	});
}, false);
</script>