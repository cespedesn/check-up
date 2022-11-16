class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :authorized
  #rails before_action will run any method specified before an action runs
  def authorized
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end
