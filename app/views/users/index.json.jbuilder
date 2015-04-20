json.array!(@users) do |user|
  json.extract! user,
                :id,
                :personal_name,
                :email,
                :company_name,
                :industry,
                :locale,
                :female_founder,
                :ethnic_founder,
                :capital_goal,
                :fundraising_stage

  json.url user_url(user, format: :json)
end
