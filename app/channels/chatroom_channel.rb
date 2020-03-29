class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_channel"  #subscribed the chatroom channel, define channel name
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
