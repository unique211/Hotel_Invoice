<!DOCTYPE html>
<html lang="en">
<!-- <html lang="ar"> for arabic only -->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>Customer Invoice</title>
	<style>


		@media print {
			@page {
				margin: 5px auto;
				/* sheet-size: 300px 250mm; */
				/* sheet-size: 300px 250mm; */
			}

			/* @media print {
            @page {
                
                margin: 0 auto; /* imprtant to logo margin */
			/*      sheet-size: 300px 250mm;*/
			/* imprtant to set paper size */
			/*    }*/
			html {
				direction: rtl;
			}

			html,
			body {
				margin: 0;
				padding: 0;
				position:absolute;
top:0px;
bottom:0px;
margin: auto;
margin-top: 0px !important;
			}

			#printContainer {
				width: 250px;
				margin: auto;
				/*padding: 10px;*/
				/*border: 2px dotted #000;*/
				text-align: justify;
			}

			.text-center {
				text-align: center;
			}
		}
	</style>
</head>

<body onload="window.print();" style="font-size: 80%; " >

	<?php


	foreach ($hotel_details as $value) {

	?>
		<h1 id="logo" style="margin-top:5" class="text-center"><img src="<?php echo base_url(); ?>upload/<?php echo htmlentities($value->logo); ?>" alt='Logo'></h1>
	<?php


	}

	?>
	<div id='printContainer'>
		<?php


		foreach ($hotel_details as $value) {

		?>
			<h2 id="slogan" style="margin-top:0" class="text-center"><?php echo htmlentities($value->hotel_name); ?></h2>
			<h3 class="text-center"><?php echo htmlentities($value->address); ?></h3>
			<?php if ($value->mobile2 == null) {
			?>
				<h4 class="text-center"><?php echo htmlentities($value->mobile1); ?></h4>
			<?php	} else {
			?>
				<h4 class="text-center"><?php echo htmlentities($value->mobile1); ?>, <?php echo htmlentities($value->mobile2); ?></h4>
			<?php	}
			?>
			<h5 class="text-center">GSTIN : <?php echo htmlentities($value->gst_no); ?></h5>
			<hr>
		<?php }
		foreach ($master as $value2) {
		?>
			<table style="width: 100%">
				<tr>
					<td>Customer Name :</td>
					<td><b><?php echo htmlentities($value2->customer_name); ?></b></td>
				</tr>
				<tr>
					<td>Table No :</td>
					<td><b><?php echo htmlentities($value2->table_name); ?><br></b></td>
				</tr>

				<tr>
					<td>Employee Name :</td>
					<td><b><?php echo htmlentities($value2->emp_name); ?></b></td>
				</tr>
			</table>
		<?php


		}

		?>

		<hr>

		<table id="table_1" style="font-size: 10;width:100%">
			<tr>
				<td style="text-align: center"><b>Item Name</b></td>
				<td style="text-align: center"><b>Qty</b></td>
				<td style="text-align: center"><b>Rate</b></td>
				<td style="text-align: center"><b>Amount</b></td>
			</tr>
			<tr >
				<td colspan="4">
					<hr>
				</td>
			</tr>
			<?php
			foreach ($details as $value3) {
				$i = 1;
			?>
				<tr id="table_1_body">
					<td style="text-align: left"><?php echo htmlentities($value3->curse); ?></td>
					<td style="text-align: right"><?php echo htmlentities($value3->qty); ?></td>
					<td style="text-align: right"><?php echo htmlentities($value3->rate); ?></td>
					<td style="text-align: right"><?php echo htmlentities($value3->amount); ?></td>
				</tr>
			<?php
			}
			?>

			<tr>
				<td colspan="4">
					<hr>
				</td>
			</tr>
			<?php
			foreach ($master as $value2) {
				$tot_amt = $value2->total_amt;
				$gst_per = $value2->gst_per;
				$service_per = $value2->service_per;

				$sgst = floatval($gst_per) / 2;
				$sgst = number_format($sgst, 2);

				$tot_gst = floatval($sgst) * floatval($tot_amt) / 100;
				$service = floatval($service_per) * floatval($tot_amt) / 100;
				$tot_gst2 = floatval($gst_per) * floatval($tot_amt) / 100;
				$g_total = floatval($tot_amt) + floatval($tot_gst2) + floatval($service);
			?>

				<tr>
					<td style="text-align: center" rowspan="5"></td>
					<td style="text-align: left" colspan="2"><b>Total Amount</b></td>
					<td style="text-align: right"><b><?php echo htmlentities($value2->total_amt); ?></b></td>
				</tr>
				<tr>
					<td style="text-align: left" colspan="2"><b>SGST @ <?php echo $sgst; ?>%</b></td>
					<td style="text-align: right"><b><?php echo $tot_gst; ?></b></td>
				</tr>
				<tr>
					<td style="text-align: left" colspan="2"><b>CGST @ <?php echo $sgst; ?>%</b></td>
					<td style="text-align: right"><b><?php echo $tot_gst; ?></b></td>
				</tr>
				<tr>
					<td style="text-align: left" colspan="2"><b>Service @ <?php echo $service_per; ?>%</b></td>
					<td style="text-align: right"><b><?php echo $service; ?></b></td>
				</tr>
				<tr>
					<td style="text-align: left" colspan="2"><b>Grand Total</b></td>
					<td style="text-align: right; font-size: 11;"><b><?php echo $g_total; ?></b></td>
				</tr>

		</table>
	<?php
			}
	?>
	<hr>

	<h5 style="text-align: center"><b>*** Thanks Visit Again ***</b></h5>

	<h4 style="text-align: center">Zodiactech Software.<br> Mo: +91 83909 66444</h4>
	</div>
</body>

<script type="text/javascript" src="<?php echo base_url() ?>assets/js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/plugins/jquery/jquery-ui.min.js"></script>


<script>
	var height = $('#table_1_body').height();
	var get_mm=parseFloat(height);
	var mm=parseInt(get_mm);

	//document.body.style.width='300px';
 //   document.body.style.height= '900px'

	// $('body').css('height', '100');
	// alert(get_mm);
</script>

</html>
