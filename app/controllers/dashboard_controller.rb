class DashboardController < ApplicationController
  before_action :authenticate_employee!
  before_action :get_profile, only: [:profile, :edit_profile, :update_profile]

  def profile
    @employee = current_employee
  end

  def edit_profile
  end

  def update_profile
    @employee.update(profile_params)

    redirect_to profile_path
  end

  protected
  
  def get_profile
    @employee = current_employee
  end

  def profile_params
    params.require(:employee).permit(:email, :name, :position)
  end
end
