require 'spec_helper'
require 'intentions/promise'

RSpec.describe Intentions do
  context '.register' do
    subject { Intentions::Promise[identifier] }

    before(:each)    { Intentions::Promise.register(promise) }

    let(:promise)    { Intentions::Promise.new(:system, :user, { will_perform: :rspec } ) }
    let(:identifier) { promise.identifier }

    it 'will register a promise' do
      expect(subject).to eql(promise)
    end
  end
end
