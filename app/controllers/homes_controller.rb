class HomesController < ApplicationController
  def index
    @message = Message.new
    session[:uuid] = SecureRandom.uuid if !session[:uuid]
  end
end
