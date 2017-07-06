require 'bike'
require 'docking_station'

describe Bike do
  subject(:bike){Bike.new}

it 'is bike working?' do
  expect(bike.working?).to be_truthy
end

it 'user can report bike broken' do
  bike.report_broken
  expect(bike.working?).to eq false
end



end
