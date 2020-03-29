App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel

    #To display message in the chatbox we need javascript so we have created javascript here and using it in view(index.html.erb chatbox), data.mod_message means mod_message = key
    $('#message-container').append data.mod_message
    scroll_bottom();
