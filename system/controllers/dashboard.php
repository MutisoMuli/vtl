<?php

_admin();
$ui->assign('_title', $_L['Dashboard']);
$admin = Admin::_info();
$ui->assign('_admin', $admin);
if(!in_array($admin['user_type'],['Admin','Sales'])){
	r2(U."home",'e',$_L['Do_Not_Access']);
}

$fdate = date('Y-m-01');
$tdate = date('Y-m-t');
//first day of month
$first_day_month = date('Y-m-01');
$mdate = date('Y-m-d');
$month_n = date('n');

$iday = ORM::for_table('tbl_transactions')->where('recharged_on',$mdate)->sum('payment');
if($iday == ''){
    $iday = '0.00';
}
$ui->assign('iday',$iday);

$imonth = ORM::for_table('tbl_transactions')->where_gte('recharged_on',$first_day_month)->where_lte('recharged_on',$mdate)->sum('payment');
if($imonth == ''){
    $imonth = '0.00';
}
$ui->assign('imonth',$imonth);

$price = ORM::for_table('tbl_transactions')->where_gte('recharged_on',$first_day_month)->where_lte('recharged_on',$mdate)->sum('price');
if($price == ''){
    $price = '0.00';
}
$ui->assign('price',$price);

$due = $price-$imonth;
if($due == ''){
    $udue = '0';
}
$ui->assign('due',$due);

$eday =  ORM::for_table('tbl_expanse')->where('date',$mdate)->sum('amount');
if($eday == ''){
    $eday = '0.00';
}
$ui->assign('eday',$eday);

$emonth =  ORM::for_table('tbl_expanse')->where_gte('date',$first_day_month)->where_lte('date',$mdate)->sum('amount');
if($emonth == ''){
    $emonth = '0.00';
}
$ui->assign('emonth',$emonth);

$incomeday = $iday-$eday;
if($incomeday == ''){
    $incomeday = '0';
}
$ui->assign('incomeday',$incomeday);

$incomemonth = $imonth-$emonth;
if($incomemonth == ''){
    $incomemonth = '0';
}
$ui->assign('incomemonth',$incomemonth);

$u_act = ORM::for_table('tbl_user_recharges')->where('status','on')->count();
if($u_act == ''){
    $u_act = '0';
}
$ui->assign('u_act',$u_act);

$u_all = ORM::for_table('tbl_customers')->count();
if($u_all == ''){
    $u_all = '0';
}
$ui->assign('u_all',$u_all);

$u_dec = $u_all-$u_act;
if($u_all == ''){
    $u_all = '0';
}
$ui->assign('u_dec',$u_dec);

$r_all = ORM::for_table('tbl_routers')->count();
if($u_all == ''){
    $u_all = '0';
}
$ui->assign('r_all',$r_all);

$pck_all = ORM::for_table('tbl_plans')->count();
if($u_all == ''){
    $u_all = '0';
}
$ui->assign('pck_all',$pck_all);

//user expire
$expire = ORM::for_table('tbl_user_recharges')->where('expiration',$mdate)->order_by_desc('id')->find_many();
$ui->assign('expire',$expire);

//activity log
$dlog = ORM::for_table('tbl_logs')->limit(5)->order_by_desc('id')->find_many();
$ui->assign('dlog',$dlog);
$log = ORM::for_table('tbl_logs')->count();
$ui->assign('log',$log);

// Count stock
$tmp = $v = ORM::for_table('tbl_plans')->select('id')->select('name_plan')->find_many();
$plans = array();
$stocks = array("used"=>0,"unused"=>0);
$n = 0;
foreach($tmp as $plan){
    $plans[$n]['name_plan'] = $plan['name_plan'];
    $plans[$n]['unused'] = ORM::for_table('tbl_voucher')
                        ->where('id_plan',$plan['id'])
                        ->where('status',0)->count();;
    $stocks["unused"] += $plans[$n]['unused'];
    $plans[$n]['used'] = ORM::for_table('tbl_voucher')
                        ->where('id_plan',$plan['id'])
                        ->where('status',1)->count();;
    $stocks["used"] += $plans[$n]['used'];
    $n++;
}

$ui->assign('stocks',$stocks);
$ui->assign('plans',$plans);

run_hook('view_dashboard'); #HOOK
$ui->display('dashboard.tpl');