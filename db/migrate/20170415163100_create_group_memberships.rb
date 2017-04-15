class CreateGroupMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :group_memberships do |t|
      t.integer :user_id
      t.integer :ticket_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
