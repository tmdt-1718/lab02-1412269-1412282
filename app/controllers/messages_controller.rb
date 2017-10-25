class MessagesController < ApplicationController
	before_action do
    @user = User.find_by(id: session[:user_id])
  end

  def index
    @conversation = Conversation.where("sender_id = ? OR recipient_id = ?", @user.id, @user.id)
    str = "SELECT * FROM messages WHERE "
    @conversation.each do |conver|
      if conver == @conversation.last
      str = str + "conversation_id = " + conver.id.to_s + "ORDER BY created_at desc"
      else
      str = str + "conversation_id = " + conver.id.to_s + " OR "
      end
    end
    @messages = Message.find_by_sql(str)
  end
end
