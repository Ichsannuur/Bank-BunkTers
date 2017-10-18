<%@ include file="/common/taglibs.jsp"%>
<div class="row">
	<div class="col-md-12">
		<s:actionerror cssClass="alert alert-danger"/>
		<s:actionmessage/>
    	<form action="customerRegistrationSave" method="post" class="form-layout">
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
		                        <input type="text" name="id" hidden="hidden"/>
		                        <input name="acc_num" type="text" maxlength="8" class="form-control num-only" required="required" value="<s:text name="acc_num"/>" readonly="readonly"/>
		                    </div>
    					</div>
    					<div class="col-lg-9 col-md-12">
    						<div class="form-group">
		                        <label><s:text name="fullname"/></label>
		                        <input name="name" type="text" class="form-control" autofocus="autofocus" required="required" maxlength="40" onkeypress="return kodeScript(event, 'qwertyuiopasdfghjklzxcvbnm ', this)">
		                    </div>
    					</div>
    					<div class="col-lg-3 col-xs-12">
    						<div class="form-group">
                                <label><s:text name="gender"/></label>
                                <div class="radio">
                                    <label><input type="radio" name="gender" value="L" required> <s:text name="male"/></label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="gender" value="P" required> <s:text name="female"/></label>
                                </div>
                            </div>
    					</div>
    					<div class="col-lg-3 col-xs-12">
    						<div class="form-group">
		                        <label><s:text name="religion"/></label>
		                        <select class="form-control" name="religion" required="required">
		                        	<option></option>
		                        	<option value="Islam">Islam</option>
		                        	<option value="Katolik">Katolik</option>
		                        	<option value="Kristen">Kristen</option>
		                        	<option value="Buddha">Buddha</option>
		                        	<option value="Hindu">Hindu</option>
		                        	<option value="Konghucu">Konghucu</option>
		                        </select>
		                    </div>
    					</div>
    				</div>
    				<div class="row">
    					<div class="col-lg-8 col-md-6 col-xs-12">
    						<div class="form-group">
		                        <label><s:text name="address"/></label>
		                        <textarea name="address" class="form-control" rows="4" cols="100" required="required" maxlength="100"></textarea>
		                    </div>
    					</div>
    				</div>
    				<div class="row">
    					<div class="col-lg-6 col-md-6 col-xs-12">
    						<div class="form-group">
    							<label><s:text name="photo"/></label>
    							<div class="row">
    							<span id="thumbnail"></span>
    							</div>
    							<div class="input-group">
    								<span class="input-group-btn">
	    						 		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
		                                	<i class="fa fa-camera"></i>&nbsp;&nbsp; <s:text name="camera"/>
		                            	</button>
		                            </span>
    								<input type="text" class="form-control" id="photo" onkeypress="return false"
    									style="background-color:white; cursor:default;"
    									placeholder="Image doesn't exist" required="required"/>
    						 	</div><!-- /input-group -->
    						</div>
    						<textarea name="base64img" id="base64img" hidden="hidden" required="required"></textarea>
   						 	<!-- Modal -->
   						 	<div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
   						 		<div class="modal-dialog">
   						 			<div class="modal-content">
   						 				<div class="modal-header">
    						 				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    						 				<h4 class="modal-title" id="myModalLabel"><s:text name="camera"/></h4>
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
															<i class="fa fa-camera"></i>&nbsp;&nbsp; <s:text name="takepic"/>
														</button>
						    							</div>
						    						</div>
						    						<div class="row" style="margin-top:10px;">
						    							<div class="col-md-12 text-center">
						    							<canvas id="canvas" width="360" height="480" hidden="hidden"></canvas>
						    							<span id="result"><s:text name="notecamera"/></span>
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
   								<i class="fa fa-save"></i>&nbsp;&nbsp; <s:text name="savecus"/>
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
		document.getElementById('thumbnail').innerHTML = '</div>'+
		'<div class="col-xs-6 col-md-3">'+
		'<div class="thumbnail">'+
		'<img src="'+dataURL+'">'+
		'</div>'+
		'</div>';
	});
}, false);
</script>