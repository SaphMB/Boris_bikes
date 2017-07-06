require 'bike'


describe Bike do
  subject(:bike){Bike.new}

it 'is bike working?' do
  expect(bike.working?).to be_truthy
end

end
