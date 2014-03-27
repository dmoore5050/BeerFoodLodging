class MessagesController < ApplicationController

  def new
  end

  def create
    message = Message.create message_params

    flash[:notice] = "Message sent!"

    UserMailer.message_email(message).deliver unless message.invalid?

    if current_user.admin
      redirect_to messages_url
    else
      redirect_to root_path
    end
  end

  def destroy
    message = Message.find params[:id]
    message.destroy

    flash[:notice] = "Message deleted!"
    redirect_to messages_url
  end

  def show
  end

  def index
  end

  private

  def message_params
    params.
      require(:message).
      permit(:reason, :title, :body, :recipient).
      merge(user: current_user)
  end

  def message
    Message.new
  end
  helper_method :message

  def messages
    Message.all
  end
  helper_method :messages

  def get_user(message)
    User.find message.user_id
  end
  helper_method :get_user

  def admin_ids
    User.where(admin: true).pluck(:id).inspect
  end
  helper_method :admin_ids

  def merge_recipient_ids(m)
    ids = eval(admin_ids)
    ids << m.user_id unless ids.include? m.user_id
    ids.inspect
  end
  helper_method :merge_recipient_ids

  def set_reply_title(m)
    title = "Re: #{m.title}" unless m.title.include? 'Re: '
  end
  helper_method :set_reply_title

end
