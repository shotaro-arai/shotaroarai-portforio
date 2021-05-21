class EmailController < ApplicationController
  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.valid?
      @email.save
      EmailMailer.send_mail(@email).deliver_now
      redirect_to email_complete_path
    else
      render 'new'
    end
  end


  private

    def email_params
      params.require(:email).permit(:name, :email, :title, :text)
    end
end
