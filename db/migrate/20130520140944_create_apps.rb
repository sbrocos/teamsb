class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :description_short
      t.string :description_large

      t.timestamps
    end
    add_index :apps, [:name]
  end
end
