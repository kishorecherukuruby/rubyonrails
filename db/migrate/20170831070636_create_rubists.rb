class CreateRubists < ActiveRecord::Migration[5.0]
  def change
    create_table :rubists do |t|
      t.string :name
      t.date :dob
      t.integer :age
      t.string :email
      t.integer :experience

      t.timestamps
    end
  end
end
