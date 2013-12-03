class HomeController < ApplicationController
  def index
    @poll = PartnerPolling::Poll.first
  end
end
