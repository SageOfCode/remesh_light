class MessagesController < ApplicationController
  def new 
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.new
  end
  
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.create(message_params)
    redirect_to conversation_path(@conversation.id)
  end

  private
  def message_params
    params.permit(:text)
  end
end