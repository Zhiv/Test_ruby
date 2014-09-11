json.array!(@users) do |user|
  json.extract! user, :id, :username, :username_full, :email, :birthday, :sex, :crypted_password, :password_salt, :persistence_token
  json.url user_url(user, format: :json)
end
