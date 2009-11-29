desc "create massive join"
task :create_join => :environment do
  t = Time.now
  test_pas = 50
  test_fields = 20
  test_pas.times do
    p = Pa.create :name => "test"
    test_fields.times do 
      p.fields << Field.create(:name => "test")
    end
    p.save
  end
  benchmark_time = Time.now - t
  load_germany = (benchmark_time / test_pas) * 30000

  puts "\n\n"
  puts "*" * 60
  puts "IMPORT TEST BENCHMARKS"
  puts "TESTING JOIN WRITE AND READ SPEEDS FOR RECONCILIATION PA AND FIELDS"
  puts "*" * 60
  
  puts "\n"
  puts "*" * 60
  puts "CREATING #{test_pas} PA'S WITH #{test_fields} ASSOCIATED FIELDS EACH"
  puts "#{benchmark_time} seconds to create #{test_pas} pas' with #{test_fields} fields each."
  puts "#{load_germany/60} minutes to create all German PA's (30,000)"
  puts "*" * 60
end


desc "test retrieve"
task :test_retrieve => :environment do
  puts "\n"
  puts "*" * 60
  puts "Loading all PA's and their fields. SQL output and timings below"
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  puts "\n"
  puts 'MANUAL SQL - SELECT "fields".*, t0.pa_id as the_parent_record_id FROM "fields" INNER JOIN "fields_pas" t0 ON "fields".id = t0.field_id'
  Pa.find_by_sql 'SELECT "fields".*, t0.pa_id as the_parent_record_id FROM "fields" INNER JOIN "fields_pas" t0 ON "fields".id = t0.field_id'
  puts "\n"
  puts 'ACTIVERECORD SQL - Pa.all :include => :fields'
  Pa.all :include => :fields
  puts "\n"
  puts "*" * 60
end
