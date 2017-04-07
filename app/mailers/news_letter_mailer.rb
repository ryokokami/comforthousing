class NewsLetterMailer < ApplicationMailer
#デフォルトのヘッダ情報
	default from:"office.comforthousing@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def subscription(letter)
    @greeting = "ご担当者様"
    @name = letter.name
    @company = letter.company
    @email = letter.email
    mail to: "office.comforthousing@gmail.com",subject: "[コンフォート]ニュースレター購読申し込み"
  end
end
