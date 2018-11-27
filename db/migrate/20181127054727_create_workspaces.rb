class CreateWorkspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.float :average_rating
      t.float :average_wifi_rating
      t.float :average_noise_level
      t.references :category, foreign_key: true
      t.boolean :closed
      t.boolean :air_purifier
      t.string :open_time
      t.string :close_time
      t.boolean :power_source
      t.boolean :smoking_free
      t.string :featured_picture
      t.references :workspace_owner, foreign_key: true

      t.timestamps
    end
  end
end
