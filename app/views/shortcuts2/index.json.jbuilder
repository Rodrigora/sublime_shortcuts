json.array!(@shortcuts) do |shortcut|
  json.extract! shortcut, :id, :title, :key
  json.url shortcut_url(shortcut, format: :json)
end
