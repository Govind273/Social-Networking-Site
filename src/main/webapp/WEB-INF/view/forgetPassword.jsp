<form name="forget_form" id="forget_form"
				action="/sendMail" method="POST">

				<div class="row col-lg-12">
					<h3 class="text-left">Welcome to Social Network, Please enter
						the details to retrieve your password</h3>
					<hr size="10" width="100%" noshade style="color: #000000"
						align="left" />

					<div class="form-group col-lg-12">
						<label for="emailId">Email</label> <input type="email"
							name="emailId" required class="form-control" id="emailId">
					</div>

					<div class="form-group row text-left col-lg-9">
						<div class="col-lg-12">
							<button type="submit" name="continue" value="continue"
								id="continue" class="btn btn-primary" onclick="alert()">Submit</button>
						</div>
					</div>
				</div>

			</form>