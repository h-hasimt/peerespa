class User::ActivesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @actives = User::Active.where(user_id: current_user.id).order("date DESC").page(params[:page]).per(10)
  end

  def show
    @active = User::Active.find(params[:id])
  end

  def new
    @active = User::Active.new
  end

  def create
    User::Active.create(new_params)
    redirect_to user_actives_path
  end

  def edit
    @active = User::Active.find(params[:id])
  end

  def update
    active = User::Active.find(params[:id])
    active.update(update_params)
    redirect_to user_actives_path
  end

# 作業場所はまだ追加していない
 private
  def new_params
    params.require(:user_active).permit(:date, :done, :undone, :cause, :solution, :nextstep).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:user_active).permit(:done, :undone, :cause, :solution, :nextstep)
  end

end
