require 'spec_helper'

describe RockPaperScissors do

  before(:each) do
    @rock = Move[:rock]
    @paper = Move[:paper]
    @scissors = Move[:scissors]
  end

  context "playing as paper" do
    it "should win against rock" do
      expect(
        RockPaperScissors.new(@paper,@rock).result
        ).to eq(:win)
    end

    it "should lose against scissors" do
      expect(
        RockPaperScissors.new(@paper,@scissors).result
        ).to eq(:lose)
    end

    it "should tie against paper" do
      expect(
        RockPaperScissors.new(@paper,@paper).result
        ).to eq(:tied)
    end
  end

  context "playing as rock" do
    it "should win against scissors" do
      expect(
        RockPaperScissors.new(@rock, @scissors).result
        ).to eq(:win)
    end

    it "should lose against paper" do
      expect(
        RockPaperScissors.new(@rock, @paper).result
        ).to eq(:lose)
    end

    it "should tie against rock" do
      expect(
        RockPaperScissors.new(@rock, @rock).result
        ).to eq(:tied)
    end
  end

  context "playing as scissors" do
    it "should win against paper" do
      expect(
        RockPaperScissors.new(@scissors, @paper).result
        ).to eq(:win)
    end

    it "should lose against rock" do
      expect(
        RockPaperScissors.new(@scissors, @rock).result
        ).to eq(:lose)
    end

    it "should tie against scissors" do
      expect(
        RockPaperScissors.new(@scissors, @scissors).result
        ).to eq(:tied)
    end
  end

end