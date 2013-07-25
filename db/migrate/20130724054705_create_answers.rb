class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description
      t.date :date
      t.references :question

      t.timestamps
    end

    create_table :answers_users, :id => false do |t|
      t.integer :answer_id
      t.integer :user_id
    end

    add_index :answers, :question_id

  end
end
