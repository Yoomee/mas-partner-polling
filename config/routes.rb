MasPartnerPolling::Application.routes.draw do
  
  scope "/:locale", :locale => /en|cy/ do
    mount PartnerPolling::Engine => "/partner_polling"
  end
  
  root :to => redirect('/en/partner_polling/polls')
  
end
