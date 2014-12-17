require 'spec_helper'
require 'intentions/agent'

RSpec.describe Intentions::Agent do
  subject { Intentions::Agent }
  let(:agent)    { Intentions::Agent.new(:system) }

  include Intentions::RSpec::ActsLikeARegister
  acts_like_a_register_for_a :agent
end
