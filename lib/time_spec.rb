require "time_spec/version"

# -*- encoding : utf-8 -*-

module TimeSpec

  class << self
    attr_accessor :base_time
  end

  extend self

  def base_time_forward(diff)
    Time.stub(:now).and_return(@base_time + diff)
  end

  def base_time_backward(diff)
    Time.stub(:now).and_return(@base_time - diff)
  end

  def rel_time_forward(diff)
    tn = Time.zone.now
    Time.stub(:now).and_return(tn + diff)
  end

  def rel_time_backward(diff)
    tn = Time.zone.now
    Time.stub(:now).and_return(tn - diff)
  end
end