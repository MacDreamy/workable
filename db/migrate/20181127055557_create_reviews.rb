class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :workspace, foreign_key: true
      t.text :comment
      t.integer :rating
      t.integer :wifi_rating
      t.integer :noise_level

      t.timestamps
    end
  end
end
