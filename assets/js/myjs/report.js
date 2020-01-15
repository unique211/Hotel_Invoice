$(document).ready(function() {
    var table_name = "bill_master";
    var flag = 0;

    getMasterSelect('hotel_master', '#hotel');

    function getMasterSelect(table_name, selecter) {

        $.ajax({
            type: "POST",
            url: base_url + "Creport/getdropdown",
            data: {
                table_name: table_name,
            },
            dataType: "JSON",
            async: false,
            success: function(data) {
                console.log(data);
                html = '';
                var name = '';
                //					
                html += '<option selected  value="0" >All</option>';
                //						}
                for (i = 0; i < data.length; i++) {
                    var id = '';
                    if (table_name == "hotel_master") {
                        name = data[i].hotel_name;
                        id = data[i].id;
                    }

                    //alert(name);
                    html += '<option value="' + id + '" >' + name + '</option>';

                }
                $(selecter).html(html);
            }
        });
    }

    function getDate(input) {
        from = input.split("/");
        return new Date(from[2], from[1] - 1, from[0]);
    }


    $(document).on("submit", "#search_form", function(e) {
        e.preventDefault();

        var from = $('#from').val();
        var to = $('#to').val();



        var date1 = new Date();
        date1 = date1.toString('dd/MM/yyyy');
        var cur_date = getDate(date1);
        var date_ini = getDate(from);
        var date_end = getDate(to);



        var tdateAr = from.split('/');
        var fromdate = tdateAr[2] + '-' + tdateAr[1] + '-' + tdateAr[0];

        var tdateAr = to.split('/');
        var todate = tdateAr[2] + '-' + tdateAr[1] + '-' + tdateAr[0];





        var today = new Date().toDateString();

        var date_ini2 = new Date(fromdate).toDateString();
        var date_end2 = new Date(todate).toDateString();





        if (date_ini < date_end) {

            datashow();
            //put code here to call server
        } else {
            if (date_ini2 == date_end2) {
                datashow();
            } else {
                swal("To Date is Invalid", "Hey, To Date is Always > OR = From Date !!", "error");
            }

        }
    });
    //----------------------submit form code end------------------------------
    datashow();
    //----------------show data in the tabale code start-----------------------
    function datashow() {
        // var role = 'staff';

        var from = $("#from").val();
        var to = $("#to").val();
        var hotel = $("#hotel").val();


        var fdob = from.split('/');
        var fromdate = fdob[2] + "-" + fdob[1] + "-" + fdob[0];

        var fdob = to.split('/');
        var todate = fdob[2] + "-" + fdob[1] + "-" + fdob[0];

        $.ajax({
            type: "POST",
            url: base_url + "Creport/get_master",
            data: {
                hotel: hotel,
                fromdate: fromdate,
                todate: todate,
                table_name: table_name,

            },
            dataType: "JSON",
            async: false,
            success: function(data) {
                // console.log('data'+data);
                var data = eval(data);


                var html = '';
                html += '<table id="myTable" class="table table-striped">' +
                    '<thead>' +
                    '<tr>' +
                    '<th><font style="font-weight:bold">Bill Number</font></th>' +
                    '<th ><font style="font-weight:bold">Date & Time</font></th>' +
                    '<th><font style="font-weight:bold">Customer Name</font></th>' +
                    '<th><font style="font-weight:bold">Table Name</font></th>' +
                    '<th><font style="font-weight:bold">Employee Name</font></th>' +
                    '<th><font style="font-weight:bold">Total Amount</font></th>' +
                    '</tr>' +
                    '</thead>' +
                    '<tbody>';
                for (var i = 0; i < data.length; i++) {
                    // var sr = i + 1;

                    var fdateval = data[i].created_at;
                    var fdateslt = fdateval.split('-');
                    var time = fdateslt[2].split(' ');
                    var created_at = time[0] + '/' + fdateslt[1] + '/' + fdateslt[0] + ' ' + time[1];


                    var gst = data[i].gst_per;
                    var tamt = data[i].total_amt;
                    var Tot_gst = 0;
                    if (tamt == "") {
                        tamt = 1;
                    }
                    if (gst == "") {
                        gst = 0;
                    }

                    Tot_gst = parseFloat(tamt) * parseFloat(gst) / 100;
                    var g_tot = parseFloat(Tot_gst) + parseFloat(tamt);

                    html += '<tr>' +

                        '<td  >' + data[i].id + '</td>' +
                        '<td  >' + created_at + '</td>' +
                        '<td >' + data[i].customer_name + '</td>' +
                        '<td >' + data[i].table_name + '</td>' +
                        '<td >' + data[i].emp_name + '</td>' +
                        '<td >' + g_tot.toFixed(2) + '</td>' +
                        '</tr>';

                }
                html += '</tbody></table>';

                $('#show_master').html(html);
                $('#myTable').DataTable({
                    dom: 'Bfrtip',
                    buttons: [{
                            extend: 'pdfHtml5',
                            title: 'Hotel Report',

                            orientation: 'portrait',
                            pageSize: 'LEGAL',
                            footer: true,
                            exportOptions: {
                                columns: [0, 1, 2, 3, 4, 5]
                            },
                        },
                        {
                            title: 'Hotel Report',
                            extend: 'excelHtml5',
                            exportOptions: {
                                columns: [0, 1, 2, 3, 4, 5]
                            }
                        }
                    ]
                });

            }

        });

    }


});