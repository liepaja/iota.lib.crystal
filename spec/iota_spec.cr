require "./spec_helper"

describe Iota do
  it "should have version number" do
    ::Iota::VERSION.should_not eq(nil)
  end

  it "should exists" do
    Iota.should_not eq(nil)
  end
end
