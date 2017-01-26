class ImagesController < ApplicationController
  
  def index
    @images = Image.all
   end

  def welcome_email
  	UserMailer.welcome_email(params[:name],params[:phone],params[:email],params[:description]).deliver_later
  end

  
end
