class ThoughtsController < ApplicationController
  def new 
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.find(params[:message_id])
    @thought = @message.thoughts.new
  end
  
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.find(params[:message_id])
    @thought = @message.thoughts.create(thought_params)
    redirect_to conversation_path(@conversation.id)
  end

  private
  def thought_params
    params.permit(:text)
  end
end