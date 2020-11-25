module ApplicationHelper
  def title(name)
    title = "<i class='activity-title-white'>#{name.byteslice(0..4)}</i>#{name.byteslice(5..-1)}"
    title.html_safe
  end
end
