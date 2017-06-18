module HomeHelper
  def nav_section(class_option)
    content_tag(:ul, class: class_option) do
      yield
    end
  end

  def section_link(section)
    active_class = "active" if params[:section].to_i === section.id
    content_tag(:li, { class: "nav-item" }) do
      link_to section.name, menu_path(section: section.id), class: "nav-link #{active_class}"
    end
  end
end
