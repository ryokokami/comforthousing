class UsersController < ApplicationController
	def contactus
	end
	 def mail_send
	 	user = User.new
	 	user.name = params[:name]
	 	user.company = params[:company]
	 	user.email = params[:email]
	 	user.tel = params[:tel]
	 	user.message = params[:message]
	 	user.require = params[:require]
	 	user.norequire = params[:norequire]
	 	@mail = NoticeMailer.sendmail_confirm(user).deliver
		logger.debug('aaaaa')
		redirect_to '/users/thankyou'
	end
end
