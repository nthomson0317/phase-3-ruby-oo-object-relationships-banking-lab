require_relative '../lib/bank_account'
require_relative '../lib/transfer'
require 'pry'

# binding.pry

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.order = 'default'
end



# avi = BankAccount.new("Avi") 
#  amanda = BankAccount.new("Amanda") 
#  Transfer.new(amanda, avi, 50) 
#     bad_transfer = Transfer.new(amanda, avi, 4000)