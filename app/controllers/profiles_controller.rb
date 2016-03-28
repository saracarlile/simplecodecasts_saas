class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :only_current_user
  
  def new
    # form where a user can fill out their own profile.
    @user = User.find( params[:user_id] )
    @profile = Profile.new
  end
  
end