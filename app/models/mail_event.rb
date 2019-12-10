class MailEvent < ApplicationRecord
  validates :event_type, presence: true
  validates :message_id, presence: true

  def self.from_json(json)
    event = MailEvent.new(event_type: json["RecordType"])
    event.event_type = json["RecordType"]
    event.message_id = json["MessageID"]
    event.message_stream = json["MessageStream"]
    event.tag = json["Tag"]
    event.first = json["FirstOpen"] || true
    if json["Geo"]
      coords = json["Geo"]["Coords"]
      event.latitude = coords.split(",")[0]
      event.longitude= coords.split(",")[1]
      event.country = json["Geo"]["Country"]
      event.region = json["Geo"]["Region"]
      event.city = json["Geo"]["City"]
      event.zip = json["Geo"]["Zip"]
    end
    event
  end
end
