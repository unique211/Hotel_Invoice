<?php include('include/header.php');  ?>
<body>
     <script src="<?php echo base_url() ?>assets/js/plugins/d3pie/d3.min.js"></script>
     <script src="<?php echo base_url() ?>assets/js/plugins/d3pie/d3pie.js"></script>
     <!-- START PAGE CONTAINER -->
     <div class="page-container page-navigation-toggled page-container-wide">
          <!-- START PAGE SIDEBAR -->
          <?php include('include/sidebar.php');  ?>
          <!-- END PAGE SIDEBAR -->
          <!-- PAGE CONTENT -->
          <div class="page-content">
               <!-- START X-NAVIGATION VERTICAL -->
               <?php include('include/topbar.php');  ?>
               <!-- END X-NAVIGATION VERTICAL -->
               <!-- START BREADCRUMB -->
               <ul class="breadcrumb">
                    <li class="active">Invoice Report</li>
               </ul>
               <!-- END BREADCRUMB -->
               <!-- PAGE CONTENT WRAPPER -->
               <div class="page-content-wrap">
                    <!--NEWS SECTION-->
                    <div class="row tablehideshow">
                         <div class="col-md-12 col-sm-12 col-xs-12 right_side">
                              <!-- START SIMPLE DATATABLE -->
                              <div class="panel panel-default">
                                   <div class="panel-heading">
                                        <h3 class="panel-title">Invoice Report</h3>
                                        <ul class="panel-controls">
                                             <!-- <li> <button class="btn btn-success btnhideshow" style="background-color:#00B050;"> Add Detail</button></li> -->
                                        </ul>
                                   </div>
                                   <div class="panel-body">
                                        <div class="col-lg-12 ">
								<form action="" id="search_form" name="search_form">
									<div class="row form-group">

										<div class="col-lg-2">
											<label>From Date :</label>
										</div>
										<div class="col-lg-2">
											<div class="input-group date " data-provide="datepicker" required>
												<input type="text" class="form-control input-sm placeholdesize date1" id="from" autocomplete="off" name="from" require>
												<div class="input-group-addon">
													<span class="fa fa-calendar"></span>
												</div>
											</div>
										</div>
										<div class="col-lg-2">
											<label>To  Date :</label>
										</div>
										<div class="col-lg-2">
											<div class="input-group date " data-provide="datepicker" required>
												<input type="text" class="form-control input-sm placeholdesize date1" id="to" autocomplete="off" name="to" require>
												<div class="input-group-addon">
													<span class="fa fa-calendar"></span>
												</div>
											</div>
										</div>

										<?php if ($this->session->role == "Superadmin") { ?>
											
											<div class="col-lg-2">
												<label>Hotel Name</label>
											</div>
											<div class="col-lg-2">
												<select name="hotel" id="hotel" class="form-control  hotel">
												<option selected  value="0" >All</option>	
												</select>
											</div>
										<?php } ?>



									</div>
									<div class="row form-group">
										<button type="submit" style="float:right;" class="btn btn-warning">
											Search</button>
										<br>

									</div>
								</form>
                                             <div class="table-responsive" id="show_master">
                                             </div>
                                        </div>
                                   </div>
                              </div>
                              <!-- END SIMPLE DATATABLE -->
                         </div>
                    </div>
                    <!--NEWS SECTION END-->
                  
               </div>
               <!-- END PAGE CONTENT WRAPPER -->
          </div>
          <!-- END PAGE CONTENT -->
     </div>
     <!-- END PAGE CONTAINER -->
     <!-- MESSAGE BOX-->
     <?php include('include/message_box.php');  ?>
     <!-- END MESSAGE BOX-->
     <!-- START SCRIPTS -->
     <?php include('include/footer_scripts.php');  ?>
     <!-- END SCRIPTS -->
     <script type="text/javascript">
          var base_url = "<?php print base_url(); ?>";
     </script>
     <script src="<?php echo base_url(); ?>assets/js/myjs/report.js"></script>
     <!--fileupload Files -->
     <script src="<?php echo base_url() . 'assets/js/AjaxFileUpload.js' ?>"></script>
     <script type="text/javascript">
          $('.clockpicker').clockpicker();
     </script>
     <script>
          $('.date').datepicker({
               'todayHighlight': true,
               format: 'dd/mm/yyyy',
               autoclose: true,
          });
          var date = new Date();
          date = date.toString('dd/MM/yyyy');
          $("#from").val(date);
            $("#to").val(date);
     </script>
</body>
</html>
