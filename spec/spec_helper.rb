RSpec.configure do |config|
  config.warnings = true

  config.before(:example, before_example_config: true) do
    puts "Running before example"
  end
end