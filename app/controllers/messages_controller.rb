class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.uuid = session[:uuid]
    if message.save!
      notifier = Slack::Notifier.new(ENV['SLACK_URL'] )
      notifier.ping(message[:body])
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  private
  def message_params
    params.require(:message).permit(
      :body
    )
  end
end
