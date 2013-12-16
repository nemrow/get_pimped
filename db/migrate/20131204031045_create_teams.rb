class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :rotation_id
      t.string :ip_address

      t.timestamps
    end
  end
end
