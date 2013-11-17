json.array!(@meetings) do |meeting|
  json.extract! meeting, :name, :opend_at, :place
  json.url meeting_url(meeting, format: :json)
end
