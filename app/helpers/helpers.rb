class Helpers
  def current_user(session_hash)
    @user = User.find(session_hash[:user_id])
    return @user
  end
  def is_logged_in?(session_hash)
    if session_hash[:user_id]
      return true
    else
      return false
    end
  end
end
