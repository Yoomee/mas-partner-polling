class ErrorsController < ApplicationController
  
  def index
    raise StandardError, "Testing error tracking"
  end
  
end
