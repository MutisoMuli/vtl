{include file="sections/header.tpl"}

		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="panel panel-primary panel-hovered panel-stacked mb30">
					<div class="panel-heading">{$_L['AddArea']}</div>
						<div class="panel-body">
                        <form class="form-horizontal" method="post" role="form" action="{$_url}area/add-post" >
							<input type="hidden" name="id" value="{$d['id']}">
                        <div class="form-group">
									<label class="col-md-2 control-label">{$_L['area']}</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="area" name="area" value="{$d['area']}" placeholder="Area Name" required>
									</div>
								</div>
                                <div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button class="btn btn-primary waves-effect waves-light" type="submit">{$_L['Save']}</button>
										Or <a href="{$_url}customers/list">{$_L['Cancel']}</a>
									</div>
								</div>
                        </form>    
                        </div>
                    </div>
                </div>
            </div>
        </div>        

{include file="sections/footer.tpl"