
class Dafaq::ApplicationController < ActionController::Base
  def dafaq_admin?
    current_user && dafaq_user.admin?
  end
  helper_method :dafaq_admin?

  def admin_required
    unless current_user.admin?
      return redirect_to root_path
    end
  end
end
