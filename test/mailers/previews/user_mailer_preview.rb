# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def welcome_mail_preview
        UserMailer.welcome_email(current_user)
    end
end
