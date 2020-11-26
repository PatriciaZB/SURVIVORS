module ApplicationHelper
  def title(name)
    title = "<i class='activity-title-white'>#{name.byteslice(0..5)}</i>#{name.byteslice(6..-1)}"
    title.html_safe
  end
end
