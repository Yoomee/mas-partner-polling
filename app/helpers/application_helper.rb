module ApplicationHelper

  def javascript_void(*args)
    "javascript:void(0)"
  end
  alias_method :demo_widget_redirect_path, :javascript_void
  alias_method :demo_widget_vote_path, :javascript_void
  alias_method :demo_widget_votes_path, :javascript_void

end