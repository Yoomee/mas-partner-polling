partners = [
  PartnerPolling::Partner.create(:name => "Partner 1"),
  PartnerPolling::Partner.create(:name => "Partner 2")
]

poll = PartnerPolling::Poll.create(:name => "Universal Credit", :question => "Are you worried about how Universal Credit may affect you?", :answer_1 => "Yes", :answer_2 => "No", :answer_3 => "Not sure")
partners.each do |partner|
  widget = PartnerPolling::Widget.new(
    :poll => poll,
    :partner => partner,
    :call_to_action_text_1 => "Watch a video about how you can prepare yourself for Universal Credit.",
    :call_to_action_url_1  => "https://www.moneyadviceservice.org.uk/en/videos/get-ready-universal-credit",
    :call_to_action_text_2 => "Visit the Money Advice Service for tools and advice on how to manage your money.",
    :call_to_action_url_2  => "https://www.moneyadviceservice.org.uk/en/categories/managing-your-money",
    :call_to_action_text_3 => "Learn more about Universal Credit here.",
    :call_to_action_url_3  => "https://www.moneyadviceservice.org.uk/en/articles/universal-credit-an-introduction",
    :default_call_to_action_text => "Learn more about Universal Credit here.",
    :default_call_to_action_url => "https://www.moneyadviceservice.org.uk/en/articles/universal-credit-an-introduction"
  )
  widget.set_default_colors
  widget.save
end

poll = PartnerPolling::Poll.create(:name => "Help to Buy", :question => "Does 'Help to Buy' make you more likely to buy for the first time?", :answer_1 => "Yes", :answer_2 => "No", :answer_3 => "Not sure")
partners.each do |partner|
  widget = PartnerPolling::Widget.new(
    :poll => poll,
    :partner => partner,
    :call_to_action_text_1 => "Visit the Money Advice Service for advice on what to consider when buying for the first time.",
    :call_to_action_url_1  => "https://www.moneyadviceservice.org.uk/en/categories/buying-for-the-first-time",
    :call_to_action_text_2 => "Need help budgeting to save for a deposit? Vist the Money Advice Service for tools and advice.",
    :call_to_action_url_2  => "https://www.moneyadviceservice.org.uk/en/categories/managing-your-money",
    :call_to_action_text_3 => "Learn more about Help to Buy here.",
    :call_to_action_url_3  => "https://www.moneyadviceservice.org.uk/en/articles/help-to-buy-scheme-everything-you-need-to-know",
    :default_call_to_action_text => "Learn more about Help to Buy here.",
    :default_call_to_action_url => "https://www.moneyadviceservice.org.uk/en/articles/help-to-buy-scheme-everything-you-need-to-know"
  )
  widget.set_default_colors
  widget.save
end

poll = PartnerPolling::Poll.create(:name => "Chancellor's Autumn Statement", :question => "How has the Chancellor's Autumn Statement affected you?", :answer_1 => "I'm a \"winner\"", :answer_2 => "I lose out", :answer_3 => "It doesn't really impact me", :answer_4 => "I don't know how it affects me")
partners.each do |partner|
  widget = PartnerPolling::Widget.new(
    :poll => poll,
    :partner => partner,
    :call_to_action_text_1 => "Consider how you can save that extra cash.",
    :call_to_action_url_1  => "https://www.moneyadviceservice.org.uk/en/categories/planning-your-savings",
    :call_to_action_text_2 => "See how Budgeting can help you cope.",
    :call_to_action_url_2  => "https://www.moneyadviceservice.org.uk/en/tools/budget-planner",
    :call_to_action_text_3 => "Double-check that you're not missing any important changes.",
    :call_to_action_url_3  => "https://www.moneyadviceservice.org.uk/en/news/autumn-statement-04122013",
    :call_to_action_text_4 => "Find out how the Autumn Statement affects you.",
    :call_to_action_url_4  => "https://www.moneyadviceservice.org.uk/en/news/autumn-statement-04122013",
    :default_call_to_action_text => "Find out how the Autumn Statement affects you.",
    :default_call_to_action_url => "https://www.moneyadviceservice.org.uk/en/news/autumn-statement-04122013"
  )
  widget.set_default_colors
  widget.save
end

PartnerPolling::Widget.all.each do |widget|
  rand(100).times do |n|
    vote = widget.votes.build(:answer_number => (1..widget.answers.size).to_a.sample)
    vote.save
    vote.redirected! if [true,false].sample
  end
  rand(100).times do
    widget.redirections.create
  end
end