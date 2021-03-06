$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'json_api_server'
Dir[File.join(File.dirname(__FILE__), '/support/**/*.rb')].each { |file| require file }

JsonApiServer.configure do |c|
  c.base_url = 'http://localhost:3001' # make consistent with test_app url
end

RSpec.configure do |c|
  c.include JsonHelper
  c.include UriHelper
  c.include CustomMatchers
  c.include FactoryHelper
end

# TODO: documentation
# - call to_json to have Oj serialize.
