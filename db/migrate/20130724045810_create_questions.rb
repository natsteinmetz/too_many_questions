class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :topic
      t.date :date

      t.timestamps
    end
  end
end
