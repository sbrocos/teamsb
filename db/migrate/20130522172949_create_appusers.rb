class CreateAppusers < ActiveRecord::Migration
  def change
    create_table :appusers do |t|
      t.integer :app_id
      t.integer :user_id

      t.timestamps
    end
  end
end
