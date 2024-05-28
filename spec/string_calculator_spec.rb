# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "given numbers separated by new lines" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end
  end
end
