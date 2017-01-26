class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(name,number,email,description)
    	@name = name
    	@number = number
    	@email = email
    	@to_email = 'roman.varhola@gmail.com'
    	@description = description
    	mail(to: @to_email, subject: 'Welcome to My Awesome Site')
  end

end
