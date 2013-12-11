class ResponsiveController < ApplicationController
  def index
    @widget = PartnerPolling::Widget.first
  end
end
