<?php

_admin();
$ui->assign('_title', $_L['Reports']);
$ui->assign('_system_menu', 'reports');

$action = $routes['1'];
$admin = Admin::_info();
$ui->assign('_admin', $admin);

if($admin['user_type'] != 'Admin' AND $admin['user_type'] != 'Sales'){
	r2(U."dashboard",'e',$_L['Do_Not_Access']);
}

$mdate = date('Y-m-d');
$mtime = date('H:i:s');
$tdate = date('Y-m-d', strtotime('today - 30 days'));
$firs_day_month = date('Y-m-01');
$this_week_start = date('Y-m-d', strtotime('previous sunday'));
$before_30_days = date('Y-m-d', strtotime('today - 30 days'));
$month_n = date('n');

switch ($action) {
    case 'by-date':
    case 'daily-report':
		$paginator = Paginator::bootstrap('tbl_transactions','recharged_on',$mdate);
        $d = ORM::for_table('tbl_transactions')->where('recharged_on',$mdate)->offset($paginator['startpoint'])->limit($paginator['limit'])->order_by_desc('id')->find_many();
		$dr = ORM::for_table('tbl_transactions')->where('recharged_on',$mdate)->sum('price');

        $ui->assign('d',$d);
		$ui->assign('dr',$dr);
		$ui->assign('mdate',$mdate);
		$ui->assign('mtime',$mtime);
		$ui->assign('paginator',$paginator);
        run_hook('view_daily_reports'); #HOOK
        $ui->display('reports-daily.tpl');
        break;

    case 'by-period':
        if($admin['user_type'] != 'Admin'){
            r2(U."dashboard",'e',$_L['Do_Not_Access']);
        }
		$ui->assign('mdate',$mdate);
		$ui->assign('mtime',$mtime);
		$ui->assign('tdate', $tdate);
        run_hook('view_reports_by_period'); #HOOK
        $ui->display('reports-period.tpl');
        break;

    case 'period-view':
        if($admin['user_type'] != 'Admin'){
            r2(U."dashboard",'e',$_L['Do_Not_Access']);
        }
        $fdate = _post('fdate');
        $tdate = _post('tdate');
        $stype = _post('stype');

        $d = ORM::for_table('tbl_transactions');
		if ($stype != ''){
				$d->where('type', $stype);
		}

        $d->where_gte('recharged_on', $fdate);
        $d->where_lte('recharged_on', $tdate);
        $d->order_by_desc('id');
        $x =  $d->find_many();

		$dr = ORM::for_table('tbl_transactions');
		if ($stype != ''){
				$dr->where('type', $stype);
		}

        $dr->where_gte('recharged_on', $fdate);
        $dr->where_lte('recharged_on', $tdate);
		$xy = $dr->sum('price');

		$ui->assign('d',$x);
		$ui->assign('dr',$xy);
        $ui->assign('fdate',$fdate);
        $ui->assign('tdate',$tdate);
        $ui->assign('stype',$stype);
        run_hook('view_reports_period'); #HOOK
        $ui->display('reports-period-view.tpl');
        break;

        case 'btrc':
            if($admin['user_type'] != 'Admin'){
                r2(U."dashboard",'e',$_L['Do_Not_Access']);
            }
            $ui->assign('mdate',$mdate);
            $ui->assign('mtime',$mtime);
            $ui->assign('tdate', $tdate);
            run_hook('view_reports_by_period'); #HOOK
            $ui->display('btrc-reports.tpl');
            break;
    
        case 'btrc-view':
            if($admin['user_type'] != 'Admin'){
                r2(U."dashboard",'e',$_L['Do_Not_Access']);
            }
            $fdate = _post('fdate');
            $tdate = _post('tdate');
            $stype = _post('stype');
    
            $d = ORM::for_table('tbl_transactions');
            if ($stype != ''){
                    $d->where('type', $stype);
            }
    
            $d->where_gte('recharged_on', $fdate);
            $d->where_lte('recharged_on', $tdate);
            $d->order_by_desc('id');
            $x =  $d->find_many();
    
            $dr = ORM::for_table('tbl_transactions');
            if ($stype != ''){
                    $dr->where('type', $stype);
            }
    
            $dr->where_gte('recharged_on', $fdate);
            $dr->where_lte('recharged_on', $tdate);
            $xy = $dr->sum('price');
    
            $ui->assign('d',$x);
            $ui->assign('dr',$xy);
            $ui->assign('fdate',$fdate);
            $ui->assign('tdate',$tdate);
            $ui->assign('stype',$stype);
            $dr = ORM::for_table('tbl_customers');
            $ui->assign('phonenumber',$phonenumber);
            run_hook('view_reports_period'); #HOOK
            $ui->display('btrc-view.tpl');
            break;  

    default:
        echo 'action not defined';
}