require 'docking_station.rb'

#require 'bike' #this needs to be removed

describe DockingStation do
  let(:bike) { double( :working? => true) }
  let(:broken) {double( :working? => false)}
  describe "release bike tests" do
    it { is_expected.to respond_to :release_bike }

    it "releases working bike" do # reference to bike needs to be removed
      subject.dock(bike)
      expect(subject.release_bike).to respond_to(:working?)
    end
  end

  describe "dock bike tests" do
    it "docks a bike" do
      expect(subject).to respond_to(:dock).with(1)
    end

    it 'returns the docked bike' do
      #bike = Bike.new #refernece to bike needs to be removed
      subject.dock(bike)
      expect(subject.bikes.first).to eq bike
    end
  end

  describe "capacity tests" do
    it "should raise error when bikes are full" do
      subject.capacity.times{ subject.dock(bike) }  #refernece to bike needs to be removed
      expect {subject.dock(bike)}.to raise_error("bikes full, no bike dock") #refernece to bike needs to be removed
    end

    it 'should raise error when no bikes' do
      expect {subject.release_bike}.to raise_error("no bikes available")
    end

    it "shouldn't accept more bikes than we allow it to" do
      station = DockingStation.new(10)
      expect { 11.times { station.dock(bike) } }.to raise_error("bikes full, no bike dock") #refernece to bike needs to be removed
    end
  end

  describe "broken bike tests" do
    it "should not release broken bikes" do
      #refernece to bike needs to be removed
      subject.dock(broken)
      expect{ subject.release_bike }.to raise_error("no bikes available")
    end

  end
end


# NOTES

# think about what is being updated.
# in terms of user story
# when you release a bike, is the bike class being updated? well no, because nothing
# is happening to the bike. but the docking station is. Its releaseing the bike
#and it has one less

#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/respond-to-matcher
