class Admin::UsersController < ApplicationController
  def index
  end
  def index
    @users = User.all
  end
  def update
    @user = User.find params[:id]
    respond_to do |format|
      format.json { respond_with_bip(@user) }
    end
  end

private
  def admin_params
    params.permit({:user => :name})
  end
end
