class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer   :total_score
      t.text      :quiz_notes
      t.integer   :time_taken
      t.timestamps
    end
  end
end
