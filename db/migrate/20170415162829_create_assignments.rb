class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.integer :ticket_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
