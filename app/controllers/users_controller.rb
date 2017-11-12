class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to :home, notice: "Account created succesfully"
        # '/'
      else
        flash[:error] = "Ar error occured!"

        # redirect_to '/signup'
        render 'new'
      end
    end

  # @task
  # redirect_to tasks_path

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end


