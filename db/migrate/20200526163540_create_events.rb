class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description, limit: 300
      t.date :event_date
      t.string :org_email

      t.timestamps
    end
  end
end
