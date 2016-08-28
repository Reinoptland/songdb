module ApplicationHelper
  def sortable(artist_attribute, title = nil)
    title ||= artist_attribute.titleize
    direction = artist_attribute == sort_artists && sort_direction == "asc" ? "desc" : "asc"
    link_to title, :sort => artist_attribute, :direction => direction
  end
end
