class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description
      t.date :date
      t.references :question

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
