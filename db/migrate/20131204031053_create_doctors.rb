class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :team_id
      t.string :ip_address

      t.timestamps
    end
  end
end
