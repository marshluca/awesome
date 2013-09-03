json.array!(@addresses) do |address|
  json.extract! address, 
  json.url agent_address_url(@agent, address, format: :json)
end
