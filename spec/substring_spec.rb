require 'spec_helper'
require_relative '../sub_strings'

RSpec.describe 'Find sub strings in word or words' do
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  describe 'Using a single word to base the sub strings lookup on' do
    it 'returns { "below" => 1, "low" => 1 }' do
      word = "below"
      expected_output = { "below" => 1, "low" => 1 }
      expect(substrings(word, dictionary)).to eq(expected_output)
    end
  end

  describe 'Using several words to base the sub string lookup on' do
    it 'returns { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }' do
      word = "Howdy partner, sit down! How's it going?"
      expected_output = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      expect(substrings(word, dictionary)).to eq(expected_output)
    end
  end
end
