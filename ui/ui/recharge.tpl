{include file="sections/header.tpl"}

		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="panel panel-primary panel-hovered panel-stacked mb30">
					<div class="panel-heading">{$_L['Recharge_Account']}</div>
					<div class="panel-body">
						<form class="form-horizontal" method="post" role="form" action="{$_url}prepaid/recharge-post" >
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Select_Account']}</label>
								<div class="col-md-6">
									<select id="personSelect" class="form-control" name="id_customer" style="width: 100%" data-placeholder="{$_L['Select_Customer']}...">
									<option></option>
										{foreach $c as $cs}
											<option value="{$cs['id']}">{$cs['username']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Type']}</label>
								<div class="col-md-6">
									<input type="radio" id="Hot" name="type" value="Hotspot"> {$_L['Hotspot_Plans']}
									<input type="radio" id="POE" name="type" value="PPPOE"> {$_L['PPPOE_Plans']}
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Routers']}</label>
								<div class="col-md-6">
									<select id="server" name="server" class="form-control">
										<option value=''>{$_L['Select_Routers']}</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Service_Plan']}</label>
								<div class="col-md-6">
									<select id="plan" name="plan" class="form-control">
										<option value=''>{$_L['Select_Plans']}</option>
									</select>
								</div>
							</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Pay Amount</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="payment" name="payment" value="{$t['payment']}" placeholder="Amount" required>
									</div>
								</div>

							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Recharge']}</button>
									Or <a href="{$_url}customers/list">{$_L['Cancel']}</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

{include file="sections/footer.tpl"}
