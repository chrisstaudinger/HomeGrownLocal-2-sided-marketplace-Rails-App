class UserMailer < ApplicationMailer
    default from: 'homegrownlocalaus@gmail.com'

    def welcome_email
        @user = params[:user]
        @url = 'https://homegrownlocal.herokuapp.com/'
        mail(to: @user.email, subject: 'Welcome to Home Grown Local')
    end
end
