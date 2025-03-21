{include file="sections/header.tpl"}

		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="panel panel-primary panel-hovered panel-stacked mb30">
					<div class="panel-heading">{$_L['Add_expanse']}</div>
						<div class="panel-body">

							<form class="form-horizontal" method="post" role="form" action="{$_url}expanse/add-post" >
							<input type="hidden" name="id" value="{$d['id']}">
								<div class="form-group">
									<label class="col-md-2 control-label">Description</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="description" name="description" value="{$d['description']}" placeholder="Expanse Description" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Amount</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="amount" name="amount" value="{$d['amount']}" placeholder="Amount">
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button class="btn btn-primary waves-effect waves-light" type="submit">{$_L['Save']}</button>
										Or <a href="{$_url}expanse/list">{$_L['Cancel']}</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


{include file="sections/footer.tpl"}
