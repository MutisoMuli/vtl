{include file="sections/header.tpl"}

					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-hovered mb20 panel-primary">
								<div class="panel-heading">{$_L['transactions']}</div>
								<div class="panel-body">
									<div class="md-whiteframe-z1 mb20 text-center" style="padding: 15px">
										<div class="col-md-8">
											<form id="site-search" method="post" action="{$_url}transactions/list/">
											<div class="input-group">
												<div class="input-group-addon">
													<span class="fa fa-search"></span>
												</div>
												<input type="text" name="username" class="form-control" placeholder="{$_L['Search_by_Username']}..." value="{$cari}">
												<div class="input-group-btn">
													<button class="btn btn-success">{$_L['Search']}</button>
												</div>
											</div>
											</form>
										</div>
										<div class="col-md-4">
											<a href="{$_url}prepaid/recharge" class="btn btn-primary btn-block waves-effect"><i class="ion ion-android-add"> </i> {$_L['Recharge_Account']}</a>
										</div>&nbsp;
									</div>
                                    <div class="table-responsive">
                                        <table id="datatable" class="table table-bordered table-striped table-condensed">
                                            <thead>
                                                <tr>
                                                    <th>Invoice</th>
                                                     <th>{$_L['Username']}</th>
                                                    <th>Plan</th>
                                                    <th>Amount</th>
                                                    <th>Payment</th>
                                                    <th>{$_L['Type']}</th>
                                                    <th>Payment Date</th>
                                                    <th>{$_L['Method']}</th>
                                                    <th>{$_L['Manage']}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            {foreach $d as $ds}
                                                <tr>
                                                    <td>{$ds['invoice']}</td>
                                                     <td>{$ds['username']}</td>
                                                    <td>{$ds['plan_name']}</td>
                                                    <td>{$ds['price']}{$_c['currency_code']}</td>
                                                    <td>{$ds['payment']}{$_c['currency_code']}</td>
                                                    <td>{$ds['type']}</td>
                                                    <td>{$ds['recharged_on']}{$ds['time']}</td>
                                                    <td>{$ds['method']}</td>
                                                    <td>
                                                        <a href="{$_url}transactions/invoice-print/{$ds['id']}" class="fa fa-print" target="_blank">Invoice</a>
                                                          <a href="{$_url}transactions/add-payment/{$ds['id']}" class="btn btn-warning btn-xs">Add Payment</a>
                                                        {if $_admin['user_type'] eq 'Admin'}
                                                        <a href="{$_url}transactions/delete/{$ds['id']}" id="{$ds['id']}" class="btn btn-danger btn-xs">{$_L['Delete']}</a>
                                                         {/if}
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
