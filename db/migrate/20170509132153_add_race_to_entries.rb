class AddRaceToEntries < ActiveRecord::Migration
  def change
    add_reference :entries, :race, index: true, foreign_key: true
  end
end
