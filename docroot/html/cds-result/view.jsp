<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ page import="javax.portlet.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>
<%@ page import="com.liferay.portal.kernel.util.WebKeys" %>
<liferay-theme:defineObjects />
<portlet:defineObjects />
<%
/*
PortletSession portletSession1 = renderRequest.getPortletSession();
portletSession1.setAttribute("password", "authenticated", PortletSession.APPLICATION_SCOPE);
String pwd = (String) portletSession1.getAttribute("password", PortletSession.APPLICATION_SCOPE);
out.print(pwd);
String password=PortalUtil.getUser(request).getPassword();
*/

String username = themeDisplay.getUser().getScreenName();
String password = (String)request.getSession().getAttribute(WebKeys.USER_PASSWORD);
//out.print(username);
//out.print("password2="+password);
%>
<input type="hidden" id="user_portlet" name="user_portlet" value="<%=username%>">
<input type="hidden" id="pass_portlet" name="pass_portlet" value="<%=password%>">
<input type="hidden" id="url_portlet" name="url_portlet" value="<%= renderRequest.getContextPath() %>">
<style>
@CHARSET "ISO-8859-1";

.breadcrumbs2 {
	background: rgba(0, 0, 0, 0)
		linear-gradient(to bottom, #fff 0px, #f6f6f6 47%, #ededed 100%) repeat
		scroll 0 0;
	border-radius: 0;
	margin-bottom: 0;
	padding-bottom: 0px
}

#breadcrumbs {
	margin-bottom: 0px;
}

.portlet-content, .portlet-minimized .portlet-content-container {
	background-color: #fafafa;
}

.aui .countPagination {
	width: 70px;
	margin-bottom: 0px:
}

.popover {
	width: 208px;
}

.aui .pagination {
	margin: 5px 0;
}

.pagingDropdown {
	float: right;
	padding-top: 5px;
}

.aui .btn {
	font-size: 14px;
	padding: 5px 12px;
	width: auto;
	margin-top: 0px;
	display: inline;
}
.aui input[type="color"], .aui input[type="date"], .aui input[type="datetime"],
	.aui input[type="datetime-local"], .aui input[type="email"], .aui input[type="month"],
	.aui input[type="number"], .aui input[type="password"], .aui input[type="search"],
	.aui input[type="tel"], .aui input[type="text"], .aui input[type="time"],
	.aui input[type="url"], .aui input[type="week"], .aui select, .aui textarea,
	.aui .input-prepend .add-on, .aui .navbar-search .search-query, .aui .uneditable-input
	{
	font-size: 14px;
	height: auto;
	line-height: normal;
}
.aui .form-group {
	margin-bottom: 10px;
}

.p-t-xxs {
	padding-top: 5px;
}

.p-b-xxs {
	padding-bottom: 5px;
}

/* new */
.aui .control-label {
	cursor: default;
}

.ibox-title {
	padding: 1px 10px;
}

.aui h5 {
	margin: 7px 0;
}

.ibox-content {
	background-color: #fff;
	border: 1px solid #ffe57f;
	color: inherit;
	margin-bottom: 5px;
	padding-left: 15px;
	padding-right: 15px;
}

.gray-bg {
	background-color: #f3f3f4;
}

#objectCenter {
	text-align: center;
	vertical-align: middle;
}

.aui .checkbox input[type="checkbox"] {
	opacity: 1;
	z-index: 1;
}

#table_Sql {
	border-left-width: 1px;
}

.aui .modal {
	top: 2%;
}
/* Large desktop */
@media ( min-width : 1200px) {
	.aui #confrimModal {
		left: 55%;
	}
}
/* Portrait tablet to landscape and desktop */
@media ( min-width : 980px) and (max-width: 1199px) {
	  .aui #confrimModal {
		left: 57%;
	}
}
/* Portrait tablet to landscape and desktop */
@media ( min-width : 768px) and (max-width: 979px) {
	.aui #confrimModal {
		left: 58.5%;
	}
	.aui .ResultsPerPageTop {
		position: absolute;
		left: -20px;
		top: 46px;
	}
	.aui .ResultsPerPageBottom {
		position: relative;
		top: -40px;
	}
	.aui [class*="span"],.aui .uneditable-input[class*="span"],.aui .row-fluid [class*="span"]
		{
		display: block;
		float: none;
		width: 100%;
		margin-left: 0;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	.aui #widthPersenTop {
		width: 10.1%;
	}
	.aui #widthPersenBottom {
		width: 11%;
	}
	.aui .txtCountPaginationTop {
		position: absolute;
		left: -14.9%;
		top: 51px;
		width: 41.66666667%;
	}
	.aui .selectCountPaginationTop {
		position: absolute;
		left: 86.5%;
		top: 51px;
		width: 24%;
	}
	.aui .txtCountPaginationBottom {
		left: -11.5%;
		top: -45px;
		width: 43.96666667%;
		position: relative;
	}
	.aui .selectCountPaginationBottom {
		left: 90.1%;
		top: -75px;
		width: 25%;
		position: relative;
	}
}

/* Landscape phone to portrait tablet */
@media ( max-width : 767px) {
	.aui #confrimModal {
		left: 23.5%;
	}
	.aui .ResultsPerPageTop {
		position: absolute;
		left: -20px;
		top: 46px;
	}
	.aui .ResultsPerPageBottom {
		position: relative;
		top: -40px;
	}
	@media ( min-width : 481px) and (max-width: 615px) {
	 .aui #confrimModal {
			left: 16.5%;
		}
		.aui .height-32-px {
			height: 42px
		}
		.aui #confrimModal {
			left: 16.5%;
		}
		.aui .ResultsPerPageTop {
			position: absolute;
			left: -20px;
			top: 46px;
		}
		.aui .ResultsPerPageBottom {
			position: static;
		}
		.aui #width-100-persen {
			
		}
		.aui #widthPersenTop {
			width: 10.3%;
		}
		.aui #widthPersenBottom {
			width: 11.2%;
		}
		.aui .txtCountPaginationTop {
			position: absolute;
			left: -14.9%;
			top: 51px;
			width: 41.66666667%;
		}
		.aui .selectCountPaginationTop {
			position: absolute;
			left: 86.5%;
			top: 51px;
			width: 24%;
		}
		.aui .txtCountPaginationBottom {
			left: -11.5%;
			top: -45px;
			width: 43.96666667%;
			position: relative;
		}
		.aui .selectCountPaginationBottom {
			left: 90.1%;
			top: -75px;
			width: 25%;
			position: relative;
		}
	}

	/* Landscape phones and down */
	@media ( max-width : 480px) {
			.aui #confrimModal {
		left: 1%;
	}
		.aui .ResultsPerPageBottom {
			position: static;
		}
		.aui #width-100-persen {
			width: 110%;
		}
		.aui #widthPersenTop {
			width: 17%;
		}
		.aui #widthPersenBottom {
			width: 19.1%;
		}
		.aui .height-32-px {
			height: 42px
		}
		.aui .txtCountPaginationTop {
			position: absolute;
			left: -25%;
			top: 40px;
			width: 41.66666667%;
		}
		.aui .selectCountPaginationTop {
			position: absolute;
			left: 78.5%;
			top: 42px;
			width: 24%;
		}
		.aui .txtCountPaginationBottom {
			left: -21.2%;
			top: -5px;
			width: 43.96666667%;
			position: relative;
		}
		.aui .selectCountPaginationBottom {
			left: 82.9%;
			top: -34px;
			width: 25%;
			position: relative;
		}
	}
}
</style>

<div class="container1">
				<div class='row-fluid'>

					<div class='col-xs-12'>
						<div id="slide_status" class="span12" style="z-index: 9000;">
							<div id="btnCloseSlide">×</div>
							<div id="slide_status_area"></div>
						</div>
					</div>

				</div>

	

				<div class="row-fluid" class="p-t-xxs">
					<!-- start--row-fluid -->

					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Advance Search</h5>
							</div>

							<div class="ibox-content breadcrumbs2">
								<div class="row-fluid p-t-xxs" >
									<div class="span4 form-horizontal  ">
										<div class="form-group p-xxs ">
											<label class="control-label">Year</label>
											<div id="drop_down_list_year" class="controls"></div>

										</div>
									</div>
									<div class="span4 form-horizontal  ">
										<div class="form-group p-xxs ">
											<label class="control-label">Month</label>
											<div id="drop_down_list_month" class="controls"></div>

										</div>
									</div>
									<div class="span4 form-horizontal  ">
										<div class="form-group p-xxs ">
											<label class="control-label">Appraisal Level</label>
											<div id="drop_down_list_appraisal_level" class="controls"></div>

										</div>
									</div>
								</div>
								<div class="row-fluid">
									<div class="span4 form-horizontal ">
										<div class="form-group p-xxs ">
											<label class="control-label">Position</label>
											<div class="controls">
												<input data-toggle="tooltip" title="Position" class="span12 m-b-n" placeholder="Position" id="position" name="position" type="text">
												<input class="form-control input-sm" 
													type="hidden" id="position_id" name="position_id" value="">
											</div>
											

										</div>
									</div>
									<div class="span4 form-horizontal ">
										<div class="form-group p-xxs ">
											<label class="control-label">Employee Name</label>
											<div class="controls">
												<input data-toggle="tooltip" title="Employee Name" class="span12 m-b-n" placeholder="Employee Name" id="emp_name" name="emp_name" type="text">
												<input class="form-control input-sm"
													type="hidden" id="emp_name_id"
													name="emp_name_id">
											</div>
											

										</div>
									</div>

									<div class="span4  ">
										
										<div class="pull-right ">
											<button id="btn_import" type="button" data-target="#ModalImport"
											data-toggle="modal" class="btn btn-success btn-sm "
											style="margin-left: 5px">
											<i class="fa fa-upload"></i>&nbsp;Import
											</button>
										</div>
										<form id="formExportToExcel" action="" method="post"
											class="pull-right " style="margin-bottom: 5px;margin-left: 5px">
											<button id="exportToExcel" class="btn btn-warning btn-sm"
												type="button">
												<i class="fa fa-download"></i> Download
											</button>
										</form>
										<div class="pull-right ">
											<button type="button" name="btnSearchAdvance"
											id="btnSearchAdvance" class="btn btn-info input-sm "
											style="margin-left: 5px">
											<i class="fa fa-search"></i>&nbsp;Search
											</button>
										</div>
		
									</div>

								</div>

								</div>

							</div>
							<!-- content end -->
						</div>

					</div>


				<!-- end--row-fluid -->

				<div class="row-fluid" id="cds_result_list_content">
					<div class="col-lg-12">
						<div class="ibox-title">
							<h5>CDS Result List</h5>
						</div>


						<div class="ibox-content" >
						<div class="row-fluid">
								<div class="height-32-px"></div>
						</div>
							<!-- start table -->
						<!-- pagination start -->
							<div class="row-fluid">
								<div id="width-100-persen" class="span9 m-b-xs">
									
									<span class="pagination_top m-b-none pagination"></span>

								</div>
								<div class="span3 object-right ResultsPerPageTop">
		                                    
			                                    <div class='pagingDropdown'>
		                                 			<select  id='countPaginationTop'  class="form-control input-sm countPagination">
					                                     <option>10</option>
					                                     <option>20</option>
					                                     <option>50</option>
					                                     <option>100</option>
					                                 </select>
		                                 		
		                                 		</div>
												<div class='pagingText'>Results per page</div>
		                                    
		                          </div>

<!-- 								<div class="span2 object-right paging-text p-t-xs txtCountPaginationTop">Results -->
<!-- 									per page</div> -->
<!-- 								<div id="widthPersenTop" class="span1 p-b-xxs selectCountPaginationTop "> -->

<!-- 									<select name="account" id="countPaginationTop" class="form-control input-sm countPagination"> -->
<!-- 										<option>10</option> -->
<!-- 										<option>20</option> -->
<!-- 										<option>50</option> -->
<!-- 										<option>100</option> -->
<!-- 									</select> -->

<!-- 								</div> -->
							</div>
							<!-- pagination end -->
							<div class="table-responsive p-b-xxs" style="overflow:auto">
								<table class="table table-striped " id="tableCdsResult" >
									<thead>
										<tr>
											<th style='width: auto'>Emp&nbsp;Code&emsp;</th>
											<th style='width: auto'>Emp&nbsp;Name&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
											<th style='width: auto'>Appraisal&nbsp;Level&emsp;</th>
											<th style='width: auto'>CDS&nbsp;ID&emsp;</th>
											<th style='width: auto'>CDS&nbsp;Name&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
											<th style='width: auto'>Year&emsp;</th>
											<th style='width: auto'>Month&emsp;</th>
											<th style='width: auto'>CDS&nbsp;Value&emsp;</th>
											<th style='width: auto; text-align: center;'>Manage</th>
										</tr>
									</thead>
									<tbody id="listCdsResult">

									</tbody>
								</table>


							</div>

							<!-- end table -->
							
							<!-- pagination start -->
							
							<div class="row-fluid">
								<div id="width-100-persen" class="span9 m-b-xs ">

									<span class="pagination_bottom m-b-none pagination"></span>

								</div>
								<div class="span3 object-right ResultsPerPageBottom">
		                                    
		                                    	<div class='pagingDropdown'>
		                                 			<select  id='countPaginationBottom'  class="form-control input-sm countPagination">
					                                     <option>10</option>
					                                     <option>20</option>
					                                     <option>50</option>
					                                     <option>100</option>
					                                 </select> 
			                                 	</div>
												<div class='pagingText'>Results per page</div>
		                        </div>

<!-- 								<div class="span2 object-right paging-text p-t-xs txtCountPaginationBottom">Results -->
<!-- 									per page</div> -->
<!-- 								<div id="widthPersenBottom" class="span1 p-b-xxs selectCountPaginationBottom"> -->

<!-- 									<select name="account" id="countPaginationBottom" class="form-control input-sm countPagination"> -->
<!-- 										<option>10</option> -->
<!-- 										<option>20</option> -->
<!-- 										<option>50</option> -->
<!-- 										<option>100</option> -->
<!-- 									</select> -->

<!-- 								</div> -->
							</div>
							<!-- pagination end -->
							<!-- end table -->
							
						</div>
						<!-- content end -->
					</div>
				</div>


			
	</div>

<!-- Modal Import CDS Result -->

	<div aria-hidden="true" role="dialog" tabindex="-1" id="ModalImport"
		class="modal inmodal" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content animated bounceInRight">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button" style="padding-top:5px">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<!-- <i class="fa fa-laptop modal-icon"></i> -->
					<h4 class="modal-title" id="">CDS Result</h4>
					<!-- 
                <small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                 -->      
				</div>
				<div class="modal-body">
					<!-- content start -->
					<div class="row-fluid">
					<div class="col-lg-12">
						<div class="span12" style="padding: 0px 10px; height:65px;">
							<h1>
							<i class="fa fa fa-pencil-square-o icon-title"></i>
							<small style=" position:absolute;top:37px;left:85px">CDS Result</small>
							</h1>
						</div>
					</div>
					</div>
					<hr>
    
					<!-- form start -->
					 

					<div class="form-group">
					<form id="fileImportCdsResult">
						 
							<h4>FILE IMPORT</h4>
							<div class="fileUpload ">
								<span>Browse File</span> <input type="file" name="file"
									id="file" accept=".xls, .xlsx"> <span></span>
							</div>
							<br>
							<h6 class="label-content-import-export">

								<input class="btn btn-success" type="submit"
									name="importFileMobile" id="importFileMobile" value="Import">
<!-- 								<strong>Note</strong> : Data size should de less 10MB -->

							</h6>
						
					</form>
					
						<!-- start table -->
					</div>
					<!-- form End -->
					<!-- content end -->
				</div>
				<div class="modal-footer">
<!-- 					<button class="btn btn-success" type="button" id="btnRoldSubmit">Save</button> -->
					<button data-dismiss="modal" class="btn btn-danger btnCancle"
						type="button">Cancel</button>
						<div class="alert alert-warning information" id="information"
						style="display: none;height:120px; overflow-y: scroll; position:relative;"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal End  -->
	<!-- Modal Confirm Start -->
	<div aria-hidden="true" role="dialog" tabindex="-1" id="confrimModal"
		class="modal inmodal in" style="width:400px;left:calc;display: none;">
		<div class="modal-dialog">
			<div class="modal-content  bounceInRight">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button" style="padding-top:3px">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h5 class="modal-title">Confirm Dialog</h5>
				</div>
				<div class="modal-body">
					<!-- content start -->
					<!-- <h2><i class="fa fa fa-pencil-square-o icon-title"></i> ADD NEW GRADE</h2>
                <hr>
                 -->
					<!-- form start -->
					<div class="form-kpi-mangement">
						<div class="form-kpi-label" align="center">

							<label>Confirm to Delete Data?</label>
						</div>
					</div>

					<!-- form start -->
					<!-- content end -->
				</div>
				<div class="modal-footer">
					<div align="center">
						<button class="btn btn-success" id="btnConfirmOK" type="button">
							&nbsp;&nbsp;<i class="fa fa-check-circle"></i>&nbsp;&nbsp;Yes&nbsp;&nbsp;
						</button>
						&nbsp;&nbsp;
						<button data-dismiss="modal" class="btn btn-danger" type="button">
							<i class="fa fa-times-circle"></i>&nbsp;Cancel
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Confirm End -->