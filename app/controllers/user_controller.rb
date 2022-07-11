class UserController < ApplicationController
  protect_from_forgery with: :null_session
  def userList
    data = User.all
    render json: data
  end

  def addUser
    data = User.new({
      "user_id" => params[:user_id],
      "user_name" => params[:user_name],
      "user_email" => params[:user_email],
      "user_password" => params[:user_password],
      "user_img" => params[:user_image],
      "user_ph" => params[:user_ph]
    })
    data.save
    render json: params
  end

  def deleteUser
    data = Blog.find_by(user_id: params[:user_id])
    data.destroy
    render json: {"deleted": "successfully"}
  end

  def searchUser
    data = User.where("user_name LIKE?", "%" + params[:user_name] + "%")
    render json: data
  end

  def editUser
    data = User.find_by(user_id: params[:user_id])
    data.update(
    "user_name" => params[:user_name],
    "user_email" => params[:user_email],
    "user_img" => params[:user_img],
    "user_password" => params[:user_password],
    "user_ph" => params[:user_ph]
    )
    render json: data
  end
end
# t.string :user_id
# t.string :user_name
# t.string :user_email
# t.string :user_password
# t.string :user_img
# t.integer :user_ph