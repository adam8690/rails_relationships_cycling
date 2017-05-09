class RemoveRaceFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :race_id_id
  end
end
