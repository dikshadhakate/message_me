class MessagesController < ApplicationController

	before_action :require_user

	def create
		message = current_user.messages.build(message_params)
		if message.save
			#Method to broadcast channel,  channel_name,    
			ActionCable.server.broadcast "chatroom_channel",
															mod_message: message_render(message) #this hash is received by chatroom.coffee "received" method in data
			# redirect_to root_path #it refreshinh the page and redirect
		end	
	end

	private

	def message_params
		params.require(:message).permit(:body)
	end

	def message_render(message)
		#this method is use to render partial from controller
		render(partial: 'message', locals: { message: message})
			  #partial file name  variable in partial, variable which we are sending from create method
	end

end	