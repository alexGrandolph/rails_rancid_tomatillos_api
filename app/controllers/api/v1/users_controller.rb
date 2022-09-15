class Api::V1::UsersController < ApplicationController


  def create
    if params[:password] == params[:password_confirmation]
      # binding.pry
      if user = User.find_by!(email: params[:email])
        render json: UserSerializer.new_user(user), status: 201
      elsif
        user = User.create!(email: params[:email], password: params[:password])

        if user.save
          render json: UserSerializer.new_user(user), status: 201
        end
      end 
    elsif params[:password] != params[:password_confirmation]
      render json: ErrorSerializer.password_mismatch, status: 422
    end  
  end 

  


end 