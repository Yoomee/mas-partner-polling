MasPartnerPolling::Application.routes.draw do
  
  scope "/:locale", :locale => /en|cy/ do
    mount PartnerPolling::Engine => "/partner_polling", :as => 'partner_polling_engine'
  end
  
  root :to => "home#index"
  
end
