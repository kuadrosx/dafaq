class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :foo

  def foo
#     raise "HERE"
  end

  def dafaq_user
    current_user
  end
  helper_method :dafaq_user

end
