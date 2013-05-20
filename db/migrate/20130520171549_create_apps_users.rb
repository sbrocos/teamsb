class CreateAppsUsers < ActiveRecord::Migration
  def change
    create_table :apps_users do |t|
      t.integer :user_id
      t.integer :app_id

      t.timestamps
    end
  end
end
