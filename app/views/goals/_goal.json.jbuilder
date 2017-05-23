json.extract! goal, :id, :summary, :link, :due_date, :eta, :created_at, :updated_at
json.url goal_url(goal, format: :json)