class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :edit, :update, :destroy]

  # GET /conversations
  # GET /conversations.json
  def index
    @conversations = Conversation.all
  end

  # GET /conversations/1
  # GET /conversations/1.json
  def show
  end

  # GET /conversations/new
  def new
    @conversation = Conversation.new
  end

  # GET /conversations/1/edit
  def edit
  end

  # POST /conversations
  # POST /conversations.json
  def create
    if user_signed_in?
      if Conversation.where(buyer_id: conversation_params[:buyer_id], seller_id: conversation_params[:seller_id]).exists?
        current_conversation = Conversation.where(buyer_id: conversation_params[:buyer_id], seller_id: conversation_params[:seller_id]).take
        new_message = Message.new
        new_message.conversation = current_conversation
        new_message.user = current_user
        new_message.message = conversation_params[:message]
        new_message.save!
        redirect_to "/conversations/#{current_conversation.id}"
      else
        @conversation = Conversation.new
      @conversation.buyer_id = conversation_params[:buyer_id]
      @conversation.seller_id = conversation_params[:seller_id]
      respond_to do |format|
        if @conversation.save!
          format.html { redirect_to @conversation, notice: 'Conversation was successfully created.' }
          format.json { render :show, status: :created, location: @conversation }
        else
          format.html { render :new }
          format.json { render json: @conversation.errors, status: :unprocessable_entity }
        end
      end
      first_message = Message.new
      first_message.conversation = @conversation
      first_message.user = current_user
      first_message.message = conversation_params[:message]
      first_message.save!
      end
    else
      redirect_to '/users/sign_in'
    end
  end

  # PATCH/PUT /conversations/1
  # PATCH/PUT /conversations/1.json
  def update
    respond_to do |format|
      if @conversation.update(conversation_params)
        format.html { redirect_to @conversation, notice: 'Conversation was successfully updated.' }
        format.json { render :show, status: :ok, location: @conversation }
      else
        format.html { render :edit }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conversations/1
  # DELETE /conversations/1.json
  def destroy
    @conversation.destroy
    respond_to do |format|
      format.html { redirect_to conversations_url, notice: 'Conversation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation
      @conversation = Conversation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conversation_params
      params.require(:conversation).permit(:buyer_id, :seller_id, :message)
    end
end
