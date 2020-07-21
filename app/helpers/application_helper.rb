module ApplicationHelper
  def header
    if logged_in?
      concat link_to 'Logout', logout_path
      concat link_to 'Back to Profile', root_path
      link_to 'Add a new hour(s)', new_hour_path
    else
      concat link_to 'Login', signin_path
      link_to 'Sign Up', new_user_path
    end
  end
end
