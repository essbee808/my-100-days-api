class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    users = User.all

    render json: users
  end

  # POST /users
  def create
    user = User.create(user_params)

    if user.valid?
      session[:current_user_id] = user.id
      render json: user, status: :created, location: user
    else
      render :new
    end
  end

  # DELETE /users/1
  def destroy
    user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :username, :password)
    end
end
