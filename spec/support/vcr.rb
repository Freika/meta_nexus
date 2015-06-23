VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :fakeweb
  config.filter_sensitive_data('<API_KEY>') { ENV['BNET_API_KEY'] }

end

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true
  c.around(:each, :vcr) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join("/").downcase.gsub(/\s+/,"_")
    # options = example.metadata.slice(:record, :match_requests_on).except(:example_group)
    VCR.use_cassette(name) { example.call }
  end
end
