require 'bike.rb'

describe Bike do

  describe "user declaring a bike is broken" do

    it "changes the @working instance variable to false" do
      subject.broken
      expect(subject.working?).to eq false
    end

  end







end
