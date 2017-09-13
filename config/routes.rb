Rails.application.routes.draw do

  get 'gift_web/index'

  get 'gift_web/about'
  
  get 'gift_web/project'
  
  get 'gift_web/supporter'
  
  get 'gift_web/voc'

  get 'inquiry/form'
  
  post "inquiry/form" => "inquiry#form"
  
  post "inquiry/process" => "inquiry#form"

end
