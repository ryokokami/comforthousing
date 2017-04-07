Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get '/caesarstone' => 'home#caesarstone'
  get '/users/contactus' => 'users#contactus'  #お問い合わせページ表示
  post 'users/mail_send' => 'users#mail_send'  #メール送信
  get '/users/thankyou' => 'users#thankyou', as:'thankyou'  #完了ページ
  get '/letters/newsletter' => 'letters#newsletter'
  post 'letters/mail_send' => 'letters#mail_send'
  get '/letters/confirm' => 'letters#confirm', as:'confirm'
end
