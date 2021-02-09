class ConversationsController < ApplicationController
  def index 
    @conversations = Conversation.all
    if params[:conversation]
      @search_results = Conversation.where("lower(title) like ?", "%#{params[:conversation]}%".downcase)
    end
  end 

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new 
    @conversation = Conversation.new
  end
  
  def create
    # require 'pry'; binding.pry
    @conversation = Conversation.create(convo_params)
    redirect_to conversations_path
  end

  private
  def convo_params
    params.require(:conversation).permit(:title)
  end
end