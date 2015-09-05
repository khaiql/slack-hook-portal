json.array!(@incoming_hooks) do |incoming_hook|
  json.extract! incoming_hook, :id
  json.url incoming_hook_url(incoming_hook, format: :json)
end
