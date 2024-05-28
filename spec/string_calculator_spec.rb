# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    # spec/string_calculator_spec.rb
context "given a negative number" do
  it "raises an exception" do
    expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
  end
end

context "given multiple negative numbers" do
  it "raises an exception" do
    expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
  end
end

  end
end
