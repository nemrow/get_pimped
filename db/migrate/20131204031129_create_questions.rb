class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :doctor_id

      t.timestamps
    end
  end
end
