module ApplicationHelper
  def title(name)
    title = "#{name.byteslice(0..1)}<i class='activity-title-white'>#{name.strip.byteslice(2..4)}</i>#{name.byteslice(5..-1)}"
    title.html_safe
  end
end
