require 'csv'

desc 'Import PMG Questions from CSV'
namespace :import_pmg_questions_csv do 
  desc 'Create Questions'
  task :create_questions => :environment do
    puts load_questions_from_csv  
  end

  def load_questions_from_csv
    file_path = File.join(Rails.root, 'lib', 'pmg_questions.csv')
    csv_text = File.read(file_path)

    csv = CSV.parse(csv_text, :headers => true)

    csv.each do |row|
      attributes = row.to_hash
      Question.create(attributes)
    end
    puts "FINISHED CREATING QUESTIONS!!"
  end   
end 