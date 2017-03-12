class User::ProgressesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @progresses = User::Progress.where(user_id: current_user.id).order("is_main DESC").page(params[:page]).per(10)
  end

  def show
    @progress = User::Progress.find(params[:id])
  end

  def new
    @progress = User::Progress.new
  end

  def create
    User::Progress.create(new_params)
    redirect_to user_progresses_path
  end

  def edit
    @progress = User::Progress.find(params[:id])
  end

  def update
    progress = User::Progress.find(params[:id])
    progress.update(update_params)
    redirect_to user_progresses_path
  end

# 作業場所はまだ追加していない
 private
  def new_params
    params.require(:user_progress).permit(:name, :goal, :is_main).merge(status: 'undone', percent: '0', user_id: current_user.id)
  end

  def update_params
    params.require(:user_progress).permit(:name, :goal, :status, :percent, :is_main)
  end

end
