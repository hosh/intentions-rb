require 'spec_helper'
require 'intentions/promise'

RSpec.describe Intentions::Promise do
  subject { Intentions::Promise }
  let(:promise)    { Intentions::Promise.new(:system, :user, { will_perform: :rspec } ) }

  include Intentions::RSpec::ActsLikeARegister
  acts_like_a_register_for_a :promise
end
