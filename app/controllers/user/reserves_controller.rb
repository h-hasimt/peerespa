class User::ReservesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @reserve = User::Reserve.new(user_id: current_user.id )
  end

  def create
    reserve = User::Reserve.create(reserve_params)
    reserve.user.update(reserve_user_params)
    redirect_to user_path
  end

  def edit
    @reserve = User::Reserve.find(params[:id])
  end

  def update
    reserve = User::Reserve.find(params[:id])
    reserve.update(reserve_update_params)
    redirect_to user_path
  end

  def destroy
    reserve = User::Reserve.find(params[:id])
    reserve.destroy
    redirect_to user_path
  end

  private
  def reserve_params
    params.require(:user_reserve).permit(:datetime, :detail).merge(counseling: "pre", user_id: current_user.id)
  end

  def reserve_user_params
    params.require(:user_reserve).require(:user_id).permit(:Fname, :Lname, :Fname_kana, :Lname_kana, :sex, :age, :skype)
  end

  def reserve_update_params
    params.require(:user_reserve).permit(:datetime, :detail)
  end

end
