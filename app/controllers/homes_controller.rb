class HomesController < ApplicationController
  def index
    @message = Message.new
  end
end
