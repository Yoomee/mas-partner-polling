class ResponsiveController < ApplicationController
  def index
    @widget = PartnerPolling::Widget.find(5)
  end
end
