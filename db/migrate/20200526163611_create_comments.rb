class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :message, limit: 140
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
