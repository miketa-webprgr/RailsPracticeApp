require 'rails_helper'

require 'capybara/spec'

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :selenium_chrome_headless
  end

# Specs in this file have access to a helper object that includes
# the BillsHelper. For example:
#
# describe BillsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

RSpec.describe BillsHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
end
