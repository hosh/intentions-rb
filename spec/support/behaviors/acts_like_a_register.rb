require 'rlet/concern'

module Intentions
  module RSpec
    module ActsLikeARegister
      extend Concern

      included do
        def self.acts_like_a_register_for_a(item_type)
          context 'when acting like a register' do
            context '.register' do
              before(:each)    { subject.register(item) }

              let(:item)            { send item_type }
              let(:registered_item) { subject[identifier] }
              let(:identifier)      { item.identifier }

              it 'will register a promise' do
                expect(registered_item).to eql(item)
              end
            end
          end
        end
      end
    end
  end
end
