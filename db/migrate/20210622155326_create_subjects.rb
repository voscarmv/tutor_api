class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :tutor
      t.text :description
      t.string :tutorpic

      t.timestamps
    end
  end
end
