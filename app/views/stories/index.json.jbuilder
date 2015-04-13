json.array!(@stories) do |story|
  json.extract! story, :heading, :body_text, :date_of_submission, :source, :genre_id, :user_id
  json.url story_url(story, format: :json)
end
