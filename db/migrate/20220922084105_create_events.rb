class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.datetime :start_at, null: false
      t.datetime :end_at
      t.string :place
      t.string :tags
      t.text :memo
      t.boolean :canceled, null: false, default: false

      t.timestamps
    end
    add_index :events, :title
    add_index :events, :start_at
    add_index :events, :place
    add_index :events, :canceled
  end
end
