<?php

_auth();
$ui->assign('_title', $_L['Order_Voucher']);
$ui->assign('_system_menu', 'order');

$action = $routes['1'];
$user = User::_info();
$ui->assign('_user', $user);

if(file_exists(__DIR__."/../../pages/".str_replace(".","",$action).".html")){
    $ui->assign("PageFile",$action);
    $ui->assign("pageHeader",$action);
    run_hook('customer_view_page'); #HOOK
    $ui->display('user-pages.tpl');
}else
    $ui->display('404.tpl');