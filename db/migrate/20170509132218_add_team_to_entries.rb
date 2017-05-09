class AddTeamToEntries < ActiveRecord::Migration
  def change
    add_reference :entries, :team, index: true, foreign_key: true
  end
end
