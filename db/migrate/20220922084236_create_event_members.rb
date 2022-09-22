class CreateEventMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :event_members do |t|
      t.references :event, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.boolean :presented, null: false, default: false

      t.timestamps
    end
    add_index :event_members, :presented
  end
end
