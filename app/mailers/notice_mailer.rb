class NoticeMailer < ApplicationMailer
#デフォルトのヘッダ情報
	default from:"office.comforthousing@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(user)
    @greeting = "ご担当者様"
    @name = user.name
    @company = user.company
    @email = user.email
    @tel = user.tel
    @require = user.require
    @norequire = user.norequire
    @message = user.message
    mail to: "office.comforthousing@gmail.com",subject: "[コンフォート]お問い合わせがきました"
  end
end