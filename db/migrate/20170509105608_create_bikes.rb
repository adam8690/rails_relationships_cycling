class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :brand
      t.references :cyclist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
