json.array! @projects do |project|
  json.id project.id
  json.image project.image
  json.title project.title
  json.departure_date project.departure_date
end