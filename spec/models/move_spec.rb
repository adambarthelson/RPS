require 'spec_helper'

describe Move do
  before(:each) do
    @move = Move.random
  end

  it "should have a name" do
    @move.should respond_to(:name)
  end

  it "should have a value" do
    @move.should respond_to(:value)
  end

  describe "throw_against" do
    it "should return a symbol" do
      expect(@move.throw_against(Move.random)).to be_kind_of(Symbol)
    end
  end

end
