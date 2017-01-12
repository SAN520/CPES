<div class="row">
	<div class="col-xs-8 col-sm-7 col-md-7 col-lg-8">
		<h1 class="page-title txt-color-blueDark"><i class="fa fa-plus fa-fw "></i>修改</h1>
	</div>
	<div class="col-xs-4 col-sm-7 col-md-7 col-lg-4" >
	    <button type="button" class="close" style="margin-right:5px;margin-top:5px;" data-dismiss="modal" aria-hidden="true">&times;</button>
	</div>
</div>
<section id="widget-grid" class="" style="height:400px;overflow-y:auto;overflow-x: hidden; ">
	<div class="row">
		<article class="col-sm-12 col-md-12 col-lg-12">
			<div class="jarviswidget jarviswidget-color-darken" id="wid-id-2" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-deletebutton="false">

				<header>
					<h2>基本信息 （<i class="glyphicon glyphicon-star"></i>为必须输入项目）</h2>
				</header>
				<div>
					<div class="widget-body fuelux">
						<div class="step-content">
                                <style type="text/css">
                                    .jcrop-holder #preview-pane {
                                        display: block;
                                        position: absolute;
                                        z-index: 200;
                                        right: -80px;
                                        padding: 1px;
                                        border: 1px rgba(0,0,0,.4) solid;
                                        background-color: white;
                                        -webkit-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.1);
                                        -moz-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.1);
                                        box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.1);
                                    }
                                    #preview-pane .preview-container {
                                        width: 50px;
                                        height: 50px;
                                        overflow: hidden;
                                    }
                                    
                                    .complete .badge {
                                        background-color: #659265
                                    }
									textarea{  
										-moz-box-shadow:1px 1px 0 #E7E7E7;
										-moz-box-sizing:border-box;
										border-color:#CCCCCC #999999 #999999 #CCCCCC;
										border-style:solid;
										border-width:1px;
										font-size:13px;
										height:160px;
										margin:0px auto;
										outline-color:-moz-use-text-color;
										outline-style:none;
										outline-width:medium;
										padding:2px;
										width:100%;
									}
									.iconDiv div {
									    cursor:pointer;
									}
                                </style>
							<form class="form-horizontal" id="permissionForm" method="post">
								<input type="hidden" name="id" value="${permission.id}">
								<input type="hidden" name="pid" value="${permission.pid}">
								<input type="hidden" name="icon" id="fclassval" value="${permission.icon}">
								<div class="step-pane active" id="step1">
									<fieldset>
										<div class="form-group">
											<label class="col-md-2 control-label">名称</label>
											<div class="col-md-10">
												<div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-list-alt fa-fw"></i></span>
                                                    <span class="input-group-addon" style="color:red"><i class="glyphicon glyphicon-star"></i></span>
                                                    <input class="form-control" type="text" id="fname" autocomplete="off" name="name" value="${permission.name }" style="border-left:none;">
												</div>
											</div>
										</div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">链接地址</label>
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                                    <input class="form-control" type="text" id="furl" autocomplete="off" name="url" value="${permission.url }" style="border-left:none;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">排序号</label>
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-list-ol fa-fw"></i></span>
                                                    <select id="fseqno" class="form-control" name="seqno">
                                                         <option value="1">1</option>
                                                         <option value="2">2</option>
                                                         <option value="3">3</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
									</fieldset>
									<fieldset id="iconFs">
										<div class="form-group">
											<label class="col-md-2 control-label">图标</label>
											<div class="col-md-10">
												<div class="input-group">
												    <span class="input-group-addon"><i id="iconI" class="fa fa-automobile fa-fw "></i></span>
													<input class="form-control" type="text" id="fa-icon-search" placeholder="搜索图标">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">&nbsp;&nbsp;</label>
											<div class="col-md-10" id="iconDiv">
								<div class="col-xs-6 col-md-3 col-sm-4 demo-icon-font">
									<i class="fa fa-automobile"></i> fa-automobile <span class="text-muted">(alias)</span>
								</div>
								<div class="col-xs-6 col-md-3 col-sm-4 demo-icon-font">
									<i class="fa fa-stethoscope"></i> fa-stethoscope
								</div>
								<div class="col-xs-6 col-md-3 col-sm-4 demo-icon-font">
									<i class="fa fa-user-md"></i> fa-user-md
								</div>
											</div>
										</div>
									</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</article>
	</div>
	</section>
    <div class="modal-footer" style="text-align: center;">
        <a href="javascript:;" class="btn btn-operation btn-success" onclick="submitForm()"><i class="fa fa-plus"></i>&nbsp;修改</a>
        <a href="javascript:;" class="btn btn-operation btn-danger" onclick="clearForm()"><i class="fa fa-refresh"></i>&nbsp;重置</a>
    </div>
<script type="text/javascript">
	
	$("#fseqno").val("${permission.seqno}");
	pageSetUp();
	
	
    function clearForm() {

    }
	
	var pagefunction = function() {
		
		function hide_divs(search) {
		    $(".demo-icon-font").hide(); // hide all divs
		    $("#all-icons-demo h2").hide();
		    $("#all-icons-demo .alert").hide();
			$('.demo-icon-font > i[class*="'+search+'"]').parent().show(); // show the ones that match
		}
		
		function show_all() {
		    $(".demo-icon-font").show()
		    $("#all-icons-demo h2").show();
		    $("#all-icons-demo .alert").show();
		}
		
		
		$("#fa-icon-search").keyup(function() {
			var search = $.trim(this.value);
			if (search === "") {
				show_all();
			}
			else {
				hide_divs(search);
			}
		});
		
		$("#iconDiv div").click(function(){
			var val = $("i", $(this)).attr("class");
			$("#fclassval").val(val);
			$("#iconI").attr("class", val+" fa-fw");
		});
	};

	function submitForm() {
		 
		   var fname = $("#fname").val();
		   if ( fname == "" ) {
	          layer.msg("名称不能为空，请输入", {time:2000, icon:5, shift:6}, function(){
	              $("#fname").focus();
	          });
		      return;
		   }
		   
	         var loadingIndex = -1;
	         $("#permissionForm").ajaxSubmit({
	             type : "POST",
	             url  : "${APP_PATH}/system/permission/update.do",
	             beforeSubmit : function() {
	                 loadingIndex = layer.msg('处理中', {icon: 16});
	                 return true;
	             },
	             success : function(r){
	                 layer.close(loadingIndex);
	                 if ( r.success ) {
	                	 layer.msg("许可修改成功", {time:2000, icon:1});
	                     $(".close").click();
	                     // 异步刷新树形结构
						var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
						treeObj.reAsyncChildNodes(null, "refresh");
	                 } else {
			             layer.msg(r.error, {time:2000, icon:5, shift:6});
	                 }
	             }
	         });
		   
		}
	
	pagefunction();
</script>
