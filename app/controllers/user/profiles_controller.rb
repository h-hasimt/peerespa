class User::ProfilesController < ApplicationController

  def show
    profile = User::Profile.find_by(user_id: params[:id])
    if profile.nil? then
      @profile = User::Profile.create(user_id: params[:id])
    else
      @profile = profile
    end
  end

  def update
    profile = User::Profile.find(params[:id])
    profile.user.update(user_params)

    if profile.house.nil? then
      house = User::House.create(house_params)
      profile.update(house_id: house.id)
    else
      profile.house.update(house_params)
    end

    if profile.goal.nil? then
      goal = User::Goal.create(goal_params)
      profile.update(goal_id: goal.id)
    else
      profile.goal.update(goal_params)
    end

    if profile.selfanaly.nil? then
      selfanaly = User::Selfanaly.create(selfanaly_params)
      profile.update(selfanaly_id: selfanaly.id)
    else
      profile.selfanaly.update(selfanaly_params)
    end

    redirect_to user_base_index_path
  end

 private
  def user_params
    params.require(:user_profile).require(:user_id).permit(:nickname, :Lname, :Fname, :Lname_kana, :Fname_kana, :age, :sex, :skype)
  end

  def house_params
    params.require(:user_profile).require(:house_id).permit(:fplan, :size)
  end

  def goal_params
    params.require(:user_profile).require(:goal_id).permit(:room_cmt, :self_cmt, :period_cmt)
  end

  def selfanaly_params
    params.require(:user_profile).require(:selfanaly_id).permit(:strength1, :strength2, :strength3, :strength4, :strength5, :demerit1, :demerit2, :demerit3, :demerit4, :demerit5, :merit1, :merit2, :merit3, :merit4, :merit5, :behave_type)
  end

end
