PartnerPolling::Poll.create(
  :question => "Are you worried about how Universal Credit may affect you?",
  :answer_1 => "Yes",
  :message_1 => "Watch a video about how you can prepare yourself for Universal Credit.",
  :url_1 => "https://www.moneyadviceservice.org.uk/en/videos/get-ready-universal-credit",
  :answer_2 => "No",
  :message_2 => "Visit the Money Advice Service for tools and advice on how to manage your money.",
  :url_2 => "https://www.moneyadviceservice.org.uk/en/categories/managing-your-money",
  :answer_3 => "Not sure",
  :message_3 => "Learn more about Universal Credit here.",
  :url_3 => "https://www.moneyadviceservice.org.uk/en/articles/universal-credit-an-introduction"
)
PartnerPolling::Poll.create(
  :question => "Does 'Help to Buy' make you more likely to buy for the first time?",
  :answer_1 => "Yes",
  :message_1 => "Visit the Money Advice Service for advice on what to consider when buying for the first time.",
  :url_1 => "https://www.moneyadviceservice.org.uk/en/categories/buying-for-the-first-time",
  :answer_2 => "No",
  :message_2 => "Need help budgeting to save for a deposit? Vist the Money Advice Service for tools and advice.",
  :url_2 => "https://www.moneyadviceservice.org.uk/en/categories/managing-your-money",
  :answer_3 => "Not sure",
  :message_3 => "Learn more about Help to Buy here.",
  :url_3 => "https://www.moneyadviceservice.org.uk/en/articles/help-to-buy-scheme-everything-you-need-to-know"
)