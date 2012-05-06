class HomeController < ApplicationController
  
  def index
    @title = "Famous Farrah"
    @subscriber = Subscriber.new
  
  end
  
end
