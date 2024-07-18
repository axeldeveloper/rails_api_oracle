json.array! @employees do |e|
  json.id e.employee_id
  json.name e.first_name
  json.email e.email
  #json.created_at user.created_at
  #json.updated_at user.updated_at
  # Adicione mais campos conforme necessário
end
