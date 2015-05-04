module ProjectsHelper
  def released(project)
    if project.release_date.nil?
      content_tag(:strong, "Not Released yet")
    else
      content_tag(:strong, "Released")
    end
  end
end
