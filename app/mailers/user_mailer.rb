class UserMailer < ApplicationMailer
    default from: 'homegrownlocalaus@gmail.com'

    def welcome_email
        puts "==========================================="
        puts params[:email]

        @email = params[:email]
        @url = 'https://homegrownlocal.herokuapp.com/'
        mail(to: @email, subject: 'Welcome to Home Grown Local')
    end
end