class CreateWorkspaceOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :workspace_owners do |t|
      t.string :user_name
      t.string :email

      t.timestamps
    end
  end
end
