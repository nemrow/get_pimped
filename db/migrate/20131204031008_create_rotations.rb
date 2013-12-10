class CreateRotations < ActiveRecord::Migration
  def change
    create_table :rotations do |t|
      t.string :name
      t.integer :school_id

      t.timestamps
    end
  end
end
