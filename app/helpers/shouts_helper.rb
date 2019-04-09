module ShoutsHelper
  def shout_author(shout)
    user_signed_in? && current_user.id == shout.user_id
  end
end
