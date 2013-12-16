class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :doctor_id
      t.string :ip_address

      t.timestamps
    end
  end
end
