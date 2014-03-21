require 'vcr'

ROOT_DIR = File.dirname(File.dirname(__FILE__))

RSpec.configure do |c|
  c.extend VCR::RSpec::Macros
end

VCR.configure do |c|
  c.cassette_library_dir = File.join(ROOT_DIR, 'spec', 'fixtures')
  c.hook_into :webmock # or :fakeweb
end