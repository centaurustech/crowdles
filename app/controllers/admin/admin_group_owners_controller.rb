class Admin::AdminGroupOwnersController < ApplicationController
  before_filter :should_be_AGO ,:only => [:view_all_workers, :all_my_admin_group_workers]

  def view_all_workers
    @workers = User.where(:role => "Worker").to_a
  end

  def all_my_admin_group_workers
    @admin_group_workers = User.where(:role=> "Admin Group Worker").where(:agw_ago_id => current_user._id)
    logger.info @admin_group_workers.to_a.inspect
    logger.info @admin_group_workers.length.inspect
  end


  private

  def should_be_AGO
    redirect_to root_path, :notice => "You should have the AGO privileges to perform this action"   if current_user.role != "Admin Group Owner"
  end
end
