class Api::V1::UsersController < ApplicationController


  def create
    if params[:password] == params[:password_confirmation]
      user = User.find_or_create_by!(email: params[:email])
      if user.save
        render json: UserSerializer.new_user(user), status: 201
      end
    elsif params[:password] != params[:password_confirmation]
      render json: ErrorSerializer.password_mismatch, status: 422
    end  
  end 

  


end 