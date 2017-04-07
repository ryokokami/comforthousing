# Preview all emails at http://localhost:3000/rails/mailers/news_letter_mailer
class NewsLetterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/news_letter_mailer/subscription
  def subscription
    NewsLetterMailer.subscription
  end

end
