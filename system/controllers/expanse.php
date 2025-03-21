<?php
_admin();
$ui->assign('_title', $_L['Expanse']);
$ui->assign('_system_menu', 'expanse');

$action = $routes['1'];
$admin = Admin::_info();
$ui->assign('_admin', $admin);

use PEAR2\Net\RouterOS;

require_once 'system/autoload/PEAR2/Autoload.php';

if ($admin['user_type'] != 'Admin' and $admin['user_type'] != 'Sales') {
    r2(U . "dashboard", 'e', $_L['Do_Not_Access']);
}
switch ($action) {
    case 'list':
        $ui->assign('xfooter', '<script type="text/javascript" src="ui/lib/c/expanse.js"></script>');
        $description = _post('description');
        run_hook('list_expanse'); #HOOK
        if ($description != '') {
            $paginator = Paginator::bootstrap('tbl_expanse', 'description', '%' . $description . '%');
            $d = ORM::for_table('tbl_expanse')->where_like('description', '%' . $description . '%')->offset($paginator['startpoint'])->limit($paginator['limit'])->order_by_desc('id')->find_many();
        } else {
            $paginator = Paginator::bootstrap('tbl_expanse');
            $d = ORM::for_table('tbl_expanse')->offset($paginator['startpoint'])->limit($paginator['limit'])->order_by_desc('id')->find_many();
        }

        $ui->assign('d', $d);
        $ui->assign('paginator', $paginator);
        $ui->display('expanse.tpl');
        break;

    case 'add':
        run_hook('view_add_expanse'); #HOOK
        $ui->display('expanse-add.tpl');
        break;

 case 'edit':
         $id  = $routes['2'];
         run_hook('edit_expanse'); #HOOK
         $d = ORM::for_table('tbl_expanse')->find_one($id);
         if ($d) {
         $ui->assign('d', $d);
         $ui->display('expanse-edit.tpl');
        } else {
          r2(U . 'expanse/list', 'e', $_L['Not_Found']);
         }
        break;
  
        case 'delete':
            if($admin['user_type'] != 'Admin'){
                r2(U."expanse/list",'e',$_L['Do_Not_Access']);
            }
                    $id  = $routes['2'];
                    $d = ORM::for_table('tbl_expanse')->find_one($id);
                    if ($d) {
                        run_hook('delete_customer_active_plan'); #HOOK
                        if ($d['type'] == 'Hotspot') {
                            if(!$config['radius_mode'])
            
                            $d->delete();
                        } else {
                            if(!$config['radius_mode']){
                            }
                            $d->delete();
                        }
                        r2(U . 'expanse/list', 's', $_L['expanse_delete']);
                    }
                    break;

        case 'add-post':
            $description = _post('description');
            $amount = _post('amount');
            $date_now = date("Y-m-d H:i:s");
            $date_only = date("Y-m-d");
            $time = date("H:i:s");
            run_hook('add_expanse'); #HOOK
    
            if ($msg == '') {
                $d = ORM::for_table('tbl_expanse')->create();
                $d->description = $description;
                $d->amount = $amount;
                $d->date = $date_only;
                $d->time = $time;
                $d->save();
                r2(U . 'expanse/list', 's', $_L['expanse_success']);
            } else {
                r2(U . 'expanse/add', 'e', $msg);
            }
            break;   
        default:
        r2(U . 'expanse/list', 'e', 'action not defined');
    }
    
