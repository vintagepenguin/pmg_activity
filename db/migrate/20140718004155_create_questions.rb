class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string   :pmg_question
      t.string   :topic
      t.string   :scripture_reference
      t.integer  :score
      t.integer  :order 

      t.timestamps
    end
  end
end
