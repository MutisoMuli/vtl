{include file="sections/header.tpl"}

<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-primary">
            <div class="panel-heading"><h3 class="panel-title">Add Payment</h3></div>
            <div class="panel-body">
                <form class="form-horizontal" method="post" role="form" action="{$_url}transactions/payment-post">
				<input type="hidden" name="id" value="{$d['id']}">
                    <div class="form-group">
						<label class="col-md-2 control-label">{$_L['Select_Account']}</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="username" name="username" value="{$d['username']}" readonly>
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
							<button class="btn btn-success waves-effect waves-light" type="submit">Add Payment</button>
							Or <a href="{$_url}transactions/list">{$_L['Cancel']}</a>
						</div>
					</div>
                </form>
            </div>
        </div>
    </div>
</div>

{include file="sections/footer.tpl"}
