<?php
_admin();
$ui->assign('_title', $_L['Customers']);
$ui->assign('_system_menu', 'customers');

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
        $ui->assign('xfooter', '<script type="text/javascript" src="ui/lib/c/customers.js"></script>');
        $username = _post('username');
        run_hook('list_area'); #HOOK
        if ($username != '') {
            $paginator = Paginator::bootstrap('tblarea', 'username', '%' . $username . '%');
            $d = ORM::for_table('tbl_area')->where_like('username', '%' . $username . '%')->offset($paginator['startpoint'])->limit($paginator['limit'])->order_by_desc('id')->find_many();
        } else {
            $paginator = Paginator::bootstrap('tbl_area');
            $d = ORM::for_table('tbl_area')->offset($paginator['startpoint'])->limit($paginator['limit'])->order_by_desc('id')->find_many();
        }

        $ui->assign('d', $d);
        $ui->assign('paginator', $paginator);
        $ui->display('area.tpl');
        break;

        case 'add':
            run_hook('view_add_area'); #HOOK
            $ui->display('area-add.tpl');
            break;
         
        case 'edit':
                $id  = $routes['2'];
                run_hook('edit_area'); #HOOK
                $d = ORM::for_table('tbl_area')->find_one($id);
                if ($d) {
                    $ui->assign('d', $d);
                    $ui->display('area-edit.tpl');
                } else {
                    r2(U . 'area/list', 'e', $_L['Area_Not_Found']);
                }
                break;            

                case 'delete':
                    $id  = $routes['2'];
                     run_hook('delete_area'); #HOOK
                    $d = ORM::for_table('tbl_area')->find_one($id);
                    {
                        r2(U . 'area/delete', 'e', $_L['Area_Delete_Successfull']);
                    }
                    break;    
            
             
        default:
    r2(U . 'area/list', 'e', 'action not defined');
}
