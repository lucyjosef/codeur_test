class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :message
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
