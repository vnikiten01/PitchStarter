class UsersController < ApplicationController


	def login

	end
	
	def index
   
  end

  def show

  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
	    if @user.save
	      redirect_to pitches_path
	    else
	      render :new
	    end
  end

  def destroy

  end

  def edit

  end

  def update

  end

  private

  def user_params
  	params.require(:user).permit([:username, :password, :password_confirmation])
  end

end