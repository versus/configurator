module SectionsHelper
  def nested_sections(sections)
    sections.map do |section, sub_sections|
      render(section) + content_tag(:div, nested_sections(sub_sections), :class => "nested_sections")
    end.join.html_safe
  end

end
