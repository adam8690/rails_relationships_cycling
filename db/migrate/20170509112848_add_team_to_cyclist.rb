class AddTeamToCyclist < ActiveRecord::Migration
  def change
    add_reference :cyclists, :team, index: true, foreign_key: true
  end
end
