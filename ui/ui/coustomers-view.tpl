{include file="sections/header.tpl"}

		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="panel panel-primary panel-hovered panel-stacked mb30">
					<div class="panel-heading">View Information {$d['username']}</div>
						<div class="panel-body">
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Full_Name']}</label>
									<div class="col-md-6">
										{$d['fullname']}
									</div>
								</div>
                                <br>
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Username']}</label>
									<div class="col-md-6">{$d['username']}</div>
								</div>
                                <br>
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Password']}</label>
									<div class="col-md-6">{$d['password']}</div>
								</div>
                                <br>
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Address']}</label>
									<div class="col-md-6">{$d['address']}</div>
								</div>
                                <br>
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Phone_Number']}</label>
									<div class="col-md-6">{$d['phonenumber']}</div>
								</div>
                                <br>
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Email']}</label>
									<div class="col-md-6">{$d['email']}</div>
								</div>
                                <br>
									<div class="form-group">
									<label class="col-md-2 control-label">{$_L['NID']}</label>
									<div class="col-md-6">{$d['nid']}</div>
								</div>
                             <br>
							<div class="form-group">
									<label class="col-md-2 control-label">{$_L['box_no']}</label>
									<div class="col-md-6">{$d['box_no']}</div>
								</div>
								</div>
						</div>
						<div class="form-group">
						<a href="{$_url}customers/active/{$d['id']}" class="btn btn-success btn-sm">Active</a>
						<a href="{$_url}customers/deactivate/{$d['id']}" class="btn btn-danger btn-sm">Deactivate</a>
						</div>
					</div>
				</div>
			</div>
		</div>

{include file="sections/footer.tpl"}
