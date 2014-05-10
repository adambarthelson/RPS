class Move
  include Comparable
  include Enumerable
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  attr_accessor :name, :value

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  RESULTS = [:tied, :win, :lose]
  NAMES  = [:rock, :paper, :scissors]
  VALUES = Hash[NAMES.zip(0..NAMES.length)].with_indifferent_access
  ALL = VALUES.map {|k,v| Move.new(:name => k, :value => v)}

  def self.random
    ALL[rand(3)]
  end

  BY_NAME = ALL.reduce({}) do |a,x|
    a[x.name] = x
    a
  end.with_indifferent_access

  def self.[](value)
    BY_NAME[value]
  end

  def <=>(other)
    # i % 3 => 0; Tie
    # i % 3 => 1; Win
    # i % 3 => 2; Lose
    ( (value - other.value) % 3 )
  end

  def throw_against(other)
    comp = self <=> other
    RESULTS[comp]
  end

  def persisted?
    false #newp
  end

end
