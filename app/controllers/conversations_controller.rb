class ConversationsController < ApplicationController
  def index 
    @conversations = Conversation.all
  end 

  def new 
    @conversation = Conversation.new
  end
  
  def create
    @conversation = Conversation.create(convo_params)
    redirect_to conversations_path
  end

  private
  def convo_params
    params.require(:conversation).permit(:title)
  end
end