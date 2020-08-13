class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question, null: false, default: ""
      t.text :description, null: false, default: ""

      t.timestamps
    end
  end
end
