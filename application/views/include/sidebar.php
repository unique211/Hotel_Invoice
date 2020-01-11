<?php 
    //echo '<pre>'.print_R($this->data,1).'</pre>';
?>
<div class="page-sidebar">
    <!-- START X-NAVIGATION -->
    <ul class="x-navigation">
        <li class="xn-logo">
            <a href="javascript:void(0);">&nbsp;</a>
            <a href="#" class="x-navigation-control"></a>
        </li>

        <li class="xn-title text-right">

            <ul>
                <!-- TOGGLE NAVIGATION -->
                <li class="xn-icon-button">
                    <a href="#" class="x-navigation-minimize"><span class="fa fa-bars"></span></a>
                </li>
                <!-- END TOGGLE NAVIGATION -->
            </ul>
        </li>


        <li class="<?php if($active_menu=='ind'){	echo 'x-active-nav';	} ?>"><a
                href="<?php echo base_url() ?>Welcome/dashboard"><span class="fa fa-tachometer"></span> <span
                    class="xn-text">Dashboard</span></a></li>
        <?php if($this->session->role=="Superadmin"){?>
        <li class="<?php if($active_menu=='con'){	echo 'x-active-nav';	} ?>"><a
                href="<?php echo base_url() ?>Welcome/hotel"><span class="fa fa-bed"></span> <span
                    class="xn-text">Hotel Master</span></a></li>

        <?php }else{?>
        <li class="<?php if($active_menu=='item'){	echo 'x-active-nav';	} ?>"><a
                href="<?php echo base_url() ?>Welcome/Item_master"><span class="fa fa-lemon-o"></span> <span
										class="xn-text">Item Master</span></a></li>
										<li class="<?php if($active_menu=='emp'){	echo 'x-active-nav';	} ?>"><a
                href="<?php echo base_url() ?>Welcome/Emp_master"><span class="fa fa-user-o"></span> <span
										class="xn-text">Employee Master</span></a></li>
										<li class="<?php if($active_menu=='table'){	echo 'x-active-nav';	} ?>"><a
                href="<?php echo base_url() ?>Welcome/Table_master"><span class="fa fa-table"></span> <span
                    class="xn-text">Table Master</span></a></li>
					<li class="<?php if($active_menu=='bill'){	echo 'x-active-nav';	} ?>"><a
                href="<?php echo base_url() ?>Welcome/Bill_generation"><span class="fa fa-calculator"></span> <span
                    class="xn-text">Bill Generation</span></a></li>
        <?php }?>
        <!-- <li class="<?php if($active_menu=='tra'){	echo 'x-active-nav';	} ?>"><a href="<?php echo base_url() ?>Welcome/transaction"><span class="fa fa-money"></span> <span class="xn-text">Transaction Master</span></a></li>
                                <li class="<?php if($active_menu=='rep'){	echo 'x-active-nav';	} ?>"><a href="<?php echo base_url() ?>Welcome/reports"><span class="fa fa-file"></span> <span class="xn-text">Reports</span></a></li> -->


        <!-- <li class="<?php if($active_menu=='bir'){	echo 'x-active-nav';	} ?>"><a class="" href="<?php echo base_url(); ?>Welcome/birth_death"><span class="fa fa-calendar"></span><span class="xn-text">Birth</span></a></li> -->





        <!-- <li class="openable open <?php if ($active_menu == 'employee') {
                                                        echo 'active';
                                                    } ?>">
                            <a href="#">
                                <span class="fa fa-plus"></span><span class="xn-text">Employee</span>
                                <span class="menu-hover"></span>
                            </a>
							 <ul class="submenu">
                               <li><a href="<?php echo base_url(); ?>Welcome/employee_details"><span class="submenu-label">Profile</span></a></li>
                                <li><a href="<?php echo base_url(); ?>Welcome/salary"><span class="submenu-label">Salary Mapping </span></a></li>
                               

                            </ul>
							</li>


							<li class="openable open <?php if ($active_menu == 'leave') {
                                                        echo 'active';
                                                    } ?>">
                            <a href="#">
                                <span class="fa fa-plus"></span><span class="xn-text">Leave</span>
                                <span class="menu-hover"></span>
                            </a>
							 <ul class="submenu">
                               <li><a href="<?php echo base_url(); ?>Welcome/leave_mapping"><span class="submenu-label">Leave Mapping</span></a></li>
                                <li><a href="<?php echo base_url(); ?>Welcome/applide_leave"><span class="submenu-label">Applied Leave </span></a></li>
                               

                            </ul>
							</li> -->


    </ul>
    <!-- END X-NAVIGATION -->
</div>
