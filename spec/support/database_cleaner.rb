RSpec.configure do |config|
  cleaner = DatabaseCleaner[:active_record]

  config.before(:suite) do |example_group|
    cleaner.clean_with(:truncation, { except: %w[] })
  end

  config.before(:each) do |example_group|
    cleaner.strategy = :transaction
    cleaner.start
  end

  config.after(:each) do
    cleaner.clean
  end
end