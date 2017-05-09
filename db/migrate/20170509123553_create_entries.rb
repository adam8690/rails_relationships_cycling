class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :team_id, index: true, foreign_key: true
      t.references :race_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
