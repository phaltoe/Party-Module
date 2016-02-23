class PersonalizedHavocError < StandardError
end

module PartyGoer

  def initialize
    @count = 0
  end

  def drink
    @count += 1
    if @count < 3
      return true
    else
      return false
    end
  end

  def sing
    "Hmmm Baby"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(base)
   base.extend(ClassMethods)
  end

  module ClassMethods
    def invited?
      true
    end
  end
end
