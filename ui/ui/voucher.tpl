{include file="sections/header.tpl"}
<!-- voucher -->
<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-hovered mb20 panel-primary">
            <div class="panel-heading">{$_L['Prepaid_Vouchers']}</div>
            <div class="panel-body">
                <div class="md-whiteframe-z1 mb20 text-center" style="padding: 15px">
                    <div class="col-md-8">
                        <form id="site-search" method="post" action="{$_url}prepaid/voucher/">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="fa fa-search"></span>
                                </div>
                                <input type="text" name="code" class="form-control"
                                    placeholder="{$_L['Search_by_Code']}..." value="{$_code}">
                                <div class="input-group-btn">
                                    <button class="btn btn-success" type="submit">{$_L['Search']}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4">
                        <div class="btn-group btn-group-justified" role="group">
                            <div class="btn-group" role="group">
                                <a href="{$_url}prepaid/add-voucher" class="btn btn-primary btn-block waves-effect"><i
                                        class="ion ion-android-add"> </i> {$_L['Add_Voucher']}</a>
                            </div>
                            <div class="btn-group" role="group">
                                <a href="{$_url}prepaid/print-voucher" target="print_voucher" class="btn btn-info"><i
                                        class="ion ion-android-print"> </i> Print</a>
                            </div>
                        </div>
                    </div>&nbsp;
                </div>
                <div class="table-responsive">
                    <table id="datatable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>{$_L['Type']}</th>
                                <th>{$_L['Routers']}</th>
                                <th>{$_L['Plan_Name']}</th>
                                <th>{$_L['Code_Voucher']}</th>
                                <th>{$_L['Status_Voucher']}</th>
                                <th>{$_L['Customers']}</th>
                                <th>{$_L['Manage']}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $d as $ds}
                                <tr>
                                    <td>{$ds['id']}</td>
                                    <td>{$ds['type']}</td>
                                    <td>{$ds['routers']}</td>
                                    <td>{$ds['name_plan']}</td>
                                    <td><span style="background-color: black; color:black;">{$ds['code']}</span></td>
                                    <td align="center">{if $ds['status'] eq '0'} <label class="btn-tag btn-tag-success">Not
                                            Use</label> {else} <label class="btn-tag btn-tag-danger">Used</label>
                                        {/if}</td>
                                    <td align="center">{if $ds['user'] eq '0'} - {else} {$ds['user']} {/if}</td>
                                    <td>
                                        <a href="{$_url}prepaid/voucher-delete/{$ds['id']}" id="{$ds['id']}"
                                            class="btn btn-danger btn-xs"
                                            onclick="return confirm('{$_L['Delete']}?')">{$_L['Delete']}</a>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
                {$paginator['contents']}
            </div>
        </div>
    </div>
</div>


{include file="sections/footer.tpl"}