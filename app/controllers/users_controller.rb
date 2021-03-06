class UsersController < ApplicationController
  before_filter :correct_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
     @user = User.new(params[:user])
      if @user.save
        sign_in @user
        UserMailer.welcome_email(@user).deliver
          redirect_to root_path, :notice => "Signed up!"
      else
          render "new"
      end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])

    if @user.update_attributes(params[:user])
      sign_in @user
      redirect_to user_path(@user), notice: "Updated Successfully"
    else
      render 'edit'
    end
  end

private

  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path unless current_user?(@user)
  end  
  
end
