class PollsHookListener < Redmine::Hook::ViewListener
  def view_projects_show_left(context = {})
    return content_tag("p", "Custom content added to the left")
  end
  
  # content of "view_projects_show_left" is replaced with render_to method

  def view_projects_show_right(context = {})
    return content_tag("p", "Custom content added to the right")
  end

  render_on :view_projects_show_left, partial: "polls/project_overview" 
end