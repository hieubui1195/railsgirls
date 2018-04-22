class UsersController < ApplicationController

  # GET /users/1/edit
  def edit
    @user = current_user
  end
  
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = current_user
    
    if @user.update(user_params)
      redirect_to root_path, notice: 'Profile was successfully updated.'
    else
    render :edit
  end
    
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :telephone)
    end
end
