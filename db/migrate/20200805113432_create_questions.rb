class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :description
      t.references :role, null: false, foreign_key: true
      t.references :mapping, null: false, foreign_key: true
      t.timestamps
    end
  end
end
