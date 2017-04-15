class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.references :ticket
      t.text       :description
      t.timestamps null: false
    end
  end
end
