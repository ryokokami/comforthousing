class LettersController < ApplicationController
	def newsletter
	end
	 def mail_send
	 	letter = Letter.new
	 	letter.name = params[:name]
	 	letter.company = params[:company]
	 	letter.email = params[:email]
	 	@mail = NewsLetterMailer.subscription(letter).deliver
		logger.debug('aaaaa')
		redirect_to '/letters/confirm'
	end
end
