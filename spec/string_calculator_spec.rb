# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given a single number" do
      it "returns the number" do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context "given two numbers" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("1,5")).to eq(6)
      end
    end

    context "given multiple numbers" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("1,2,3")).to eq(6)
      end
    end
  end
end

