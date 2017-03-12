class User::ActivesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @actives = User::Active.where(user_id: current_user.id).order("date DESC").order("created_at DESC").page(params[:page]).per(10)
  end

  def show
    @active = User::Active.find(params[:id])
  end

  def new
    @progresses = User::Progress.all
    @active = User::Active.new
  end

  def create
    active = User::Active.new(new_params)
    id = get_progressid(params[:user_active][:progress_id][:name])
    active.progress_id = id
    active.save
    redirect_to user_actives_path
  end

  def edit
    @progresses = User::Progress.all
    @active = User::Active.find(params[:id])
  end

  def update
    active = User::Active.find(params[:id])
    active.update(update_params)
    id = get_progressid(params[:user_active][:progress_id][:name])
    active.progress_id = id
    active.save
    redirect_to user_actives_path
  end

 private
  #送られてきた作業場所から、該当するPogressテーブルのidを取得する
  def get_progressid(progress_name)
    progress = User::Progress.find_by(name: progress_name)
    return progress.id
  end

  def new_params
    params.require(:user_active).permit(:date, :done, :undone, :cause, :solution, :nextstep, :progress_id).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:user_active).permit(:date, :done, :undone, :cause, :solution, :nextstep)
  end

end
