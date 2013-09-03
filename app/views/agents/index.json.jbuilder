json.array!(@agents) do |agent|
  json.extract! agent, 
  json.url agent_url(agent, format: :json)
end
