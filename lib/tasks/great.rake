require 'csv'

desc 'Load PMG Questions into the DB'
task :load_questions => :environment do 
  load_questions_from_csv
end 

def load_questions_from_csv
  file_path = File.join(Rails.root, 'lib', 'pmg_questions.csv')
  csv_text = File.read(file_path)

  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Question.create!(row.to_hash)
  end
end 