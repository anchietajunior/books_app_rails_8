class PagesController < ApplicationController
  allow_unauthenticated_access

  before_action :resume_session
  def contact
    @current_user_email = Current.user.present? ? Current.user.email : ""
  end
end
