# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "given a custom delimiter" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end
  end
end
