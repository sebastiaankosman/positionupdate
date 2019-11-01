class SessionsController < Devise::SessionsController
  def after_sign_in_path
   "/positions/new"
 end
end
