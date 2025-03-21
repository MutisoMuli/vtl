{include file="sections/header.tpl"}

<div class="row">
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-aqua">
            <div class="inner">
                <h4><sup>{$_c['currency_code']}</sup>
                    {number_format($iday,0,$_c['dec_point'],$_c['thousands_sep'])}</h4>
                <p>Bill Collect Today</p>
            </div>
            <div class="icon">
                <i class="ion ion-card"></i>
            </div>
            <a href="" class="small-box-footer">{$_L['View_Reports']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-green">
            <div class="inner">
                <h4><sup>{$_c['currency_code']}</sup>
                    {number_format($imonth,0,$_c['dec_point'],$_c['thousands_sep'])}</h4>
                <p>Bill Collect This Month</p>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
            <a href="" class="small-box-footer">{$_L['View_Reports']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
 <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-red">
            <div class="inner">
                <h4><sup>{$_c['currency_code']}</sup>
                    {number_format($due,0,$_c['dec_point'],$_c['thousands_sep'])}</h4>
                <p>Due Bill This Month</p>
            </div>
            <div class="icon">
                <i class="ion ion-android-clipboard"></i>
            </div>
            <a href="" class="small-box-footer">{$_L['View_Reports']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
     <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-orange-active">
            <div class="inner">
                <h4><sup>{$_c['currency_code']}</sup>
                    {number_format($eday,0,$_c['dec_point'],$_c['thousands_sep'])}</h4>
                <p>{$_L['Expanse']} Today</p>
            </div>
            <div class="icon">
                <i class="ion ion-minus-circled"></i>
            </div>
            <a href="{$_url}expanse/add" class="small-box-footer">Add Expanse<i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-yellow">
            <div class="inner">
               <h4><sup>{$_c['currency_code']}</sup>
                    {number_format($emonth,0,$_c['dec_point'],$_c['thousands_sep'])}</h4>
                <p>{$_L['Expanse']} This Month</p>
            </div>
            <div class="icon">
                <i class="ion ion-minus-round"></i>
            </div>
            <a href="{$_url}expanse/list" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
     <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-teal-active">
            <div class="inner">
               <h4><sup>{$_c['currency_code']}</sup>
                    {number_format($incomeday,0,$_c['dec_point'],$_c['thousands_sep'])}</h4>
                <p>Income Today</p>
            </div>
            <div class="icon">
                <i class="ion ion-cash"></i>
            </div>
            <a href="" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-olive-active">
            <div class="inner">
               <h4><sup>{$_c['currency_code']}</sup>
                    {number_format($incomemonth,0,$_c['dec_point'],$_c['thousands_sep'])}</h4>
                <p>Income This Month</p>
            </div>
            <div class="icon">
                <i class="ion ion-arrow-graph-up-right"></i>
            </div>
            <a href="" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-navy">
            <div class="inner">
                <h4>{$u_act}</h4>

                <p>{$_L['Users_Active']}</p>
            </div>
            <div class="icon">
                <i class="ion ion-person"></i>
            </div>
            <a href="{$_url}prepaid/list" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-aqua">
            <div class="inner">
                <h4>{$u_all}</h4>

                <p>{$_L['Total_Users']}</p>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
            <a href="{$_url}customers/list" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
     <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-red">
            <div class="inner">
                <h4>{$u_dec}</h4>

                <p>{$_L['Users_Deactive']}</p>
            </div>
            <div class="icon">
                <i class="ion ion-person"></i>
            </div>
            <a href="{$_url}prepaid/list" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-blue">
            <div class="inner">
                <h4>{$pck_all}</h4>

                <p>{$_L['Total_Packages']}</p>
            </div>
            <div class="icon">
                <i class="fa fa-ticket"></i>
            </div>
            <a href="" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-green">
            <div class="inner">
                <h4>{$r_all}</h4>

                <p>{$_L['Mikrotik_Connect']}</p>
            </div>
            <div class="icon">
                <i class="ion ion-network"></i>
            </div>
            <a href="{$_url}routers/list" class="small-box-footer">{$_L['View_All']} <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-7">
        <div class="panel panel-primary mb20 panel-hovered project-stats table-responsive">
            <div class="panel-heading">Vouchers Stock</div>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>{$_L['Plan_Name']}</th>
                            <th>unused</th>
                            <th>used</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $plans as $stok}
                            <tr>
                                <td>{$stok['name_plan']}</td>
                                <td>{$stok['unused']}</td>
                                <td>{$stok['used']}</td>
                            </tr>
                        </tbody>
                    {/foreach}
                    <tr>
                        <td>Total</td>
                        <td>{$stocks['unused']}</td>
                        <td>{$stocks['used']}</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="panel panel-warning mb20 panel-hovered project-stats table-responsive">
            <div class="panel-heading">{$_L['User_Expired_Today']}</div>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>{$_L['Username']}</th>
                            <th>{$_L['Created_On']}</th>
                            <th>{$_L['Expires_On']}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {$no = 1}
                        {foreach $expire as $expired}
                            <tr>
                                <td>{$no++}</td>
                                <td>{$expired['username']}</td>
                                <td>{date($_c['date_format'], strtotime($expired['recharged_on']))} {$expired['time']}
                                </td>
                                <td>{date($_c['date_format'], strtotime($expired['expiration']))} {$expired['time']}
                                </td>
                            </tr>
                        </tbody>
                    {/foreach}
                </table>
            </div>
        </div>
    </div>

    <div class="col-md-5">
        <div class="panel panel-success panel-hovered mb20 activities">
            <div class="panel-heading">{Lang::T('Payment Gateway')}: {$_c['payment_gateway']}</div>
        </div>
        <div class="panel panel-info panel-hovered mb20 activities">
            <div class="panel-heading">{$_L['Activity_Log']}</div>
            <div class="panel-body">
                <ul class="list-unstyled">
                    {foreach $dlog as $dlogs}
                        <li class="primary">
                            <span class="point"></span>
                            <span class="time small text-muted">{time_elapsed_string($dlogs['date'],true)}</span>
                            <p>{$dlogs['description']}</p>
                        </li>
                    {/foreach}
                </ul>
            </div>
        </div>
    </div>

</div>

<script>
    window.addEventListener('DOMContentLoaded', function() {
        $.getJSON("./version.json?" + Math.random(), function(data) {
            var localVersion = data.version;
            $('#version').html('Version: ' + localVersion);
            $.getJSON("https://raw.githubusercontent.com/ibnux/phpnuxbill/master/version.json?" + Math
                .random(),
                function(data) {
                    var latestVersion = data.version;
                    if (localVersion !== latestVersion) {
                        $('#version').html('Latest Version: ' + latestVersion);
                    }
                });
        });

    });
</script>

{include file="sections/footer.tpl"}