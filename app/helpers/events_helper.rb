module EventsHelper
  def event_author(event)
    user_signed_in? && current_user.id == event.user_id
  end
end
