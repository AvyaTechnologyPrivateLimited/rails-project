json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :password, :dob, :email_id, :phone
  json.url user_url(user, format: :json)
end
