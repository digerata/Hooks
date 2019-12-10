class CreateMailEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :mail_events do |t|
      t.string :event_type
      t.string :message_id
      t.string :message_stream
      t.string :recipient
      t.string :tag
      t.boolean :first, nullable: false, default: true
      t.string :country
      t.string :region
      t.string :city
      t.string :zip
      t.decimal :latitude
      t.decimal :longitude
      t.timestamps
    end
  end
end
