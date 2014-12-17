require 'intentions/concerns/register'

module Intentions
  class Agent
    extend Intentions::Concerns::Register

    attr_reader :name, :trusts
    alias :identifier :name


    def initialize(name)
      @name   = name
      @trusts = {}
    end
  end
end
