class WelcomeController < ApplicationController
  def index
    @message = "Welcome to this crazy world"
    @repeat = 1
    render :index
  end

  def show
    @message = "Welcome #{params[:name]}"
    @repeat = 1
    render :index
  end

  def lorem
    case params[:type]
    when "standard"
      @message = Ipsum.lorem
    when "obama"
      @message = Ipsum.obama
    when "corporate"
      @message = Ipsum.corporate
    else
      @message = "Ipsum not available or invalid"
    end
    if params[:repeat]
      @repeat = params[:repeat].to_i
    else
      @repeat = 1
    end
    render :index
  end
end
