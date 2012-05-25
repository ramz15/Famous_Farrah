class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(params[:subscriber])

    if @subscriber.save
      success = true
      message = "Welcome to the crew. YOLO. #CakeBoyz"
    else
      success = false
      message = "Duplicate or invalid email. Please try again."
    end

    respond_to do |format|
      format.html {
        if success
          flash[:success] = message 
          redirect_to root_path and return
        else
          flash[:error] = message
          redirect_to root_path and return
        end  
      }  
    end
  end
end
