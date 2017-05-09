class RemoveTeamFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :team_id_id
  end
end
