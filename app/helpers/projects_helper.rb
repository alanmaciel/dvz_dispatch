module ProjectsHelper
  def released(project)
    if project.released?
      content_tag(:strong, "Released")
    else
      content_tag(:strong, "Not Released yet")
    end
  end
end
