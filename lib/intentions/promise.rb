require 'rlet'
require 'digest/sha2'

module Intentions
  class Promise
    include Let
    attr_reader :identifier, :promiser, :promisee, :body, :metadata

    let(:identifier) { Digest::SHA2.new.update(to_digest.inspect).to_s }
    let(:sign)      { metadata[:sign] }
    let(:scope)     { metadata[:scope] }
    let(:timestamp) { Time.now.utc }
    let(:salt)      { rand(100000) }

    def initialize(_promiser, _promisee, _body, _metadata = {})
      @promiser = _promiser.freeze
      @promisee = _promisee.freeze
      @body     = _body.freeze
      @metadata = _metadata.freeze
    end

    def to_h
      to_digest.merge(identifier: identifier)
    end

    def to_digest
      {
        promiser:  promiser,
        promisee:  promisee,
        body:      body,
        metadata:  metadata,
        timestamp: timestamp,
        salt:      rand
      }
    end

  end
end
