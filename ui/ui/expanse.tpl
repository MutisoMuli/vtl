{include file="sections/header.tpl"}

					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-hovered mb20 panel-primary">
								<div class="panel-heading">{$_L['Expanse']}</div>
								<div class="panel-body">
									<div class="md-whiteframe-z1 mb20 text-center" style="padding: 15px">

										<div class="col-md-4">
											<a href="{$_url}expanse/add" class="btn btn-primary btn-block waves-effect"><i class="ion ion-android-add"> </i> {$_L['Add_expanse']}</a>
										</div>&nbsp;
									</div>
									<div id="message"><?php if(isset($message)) { echo $message; } ?></div>
					
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                               <tr>
    												<th>Date</th>
                                                   <th>Expanse For</th>
                                                    <th>Amount</th>
                                                    <th>{$_L['Manage']}</th>
                                                </tr>
                                               
                                            </thead>
                                            <tbody>
                                            {foreach $d as $ds}
                                                <tr>
                                                <th>{$ds['date']} {$ds['time']}</td>
                                                   <td>{$ds['description']}</td>
                                                    <td>{$_c['currency_code']} {$ds['amount']}</td>
                                                    <td>
                                                        <a href="{$_url}expanse/delete/{$ds['id']}" id="{$ds['id']}" class="btn btn-danger btn-sm" onclick="confirm('{$_L['Delete']}?')">{$_L['Delete']}</a>
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
