require 'rails_helper'

RSpec.describe Plant, type: :model do
  describe 'Plant' do
    it 'rejects xx from entering the venue' do
      b = Plant.new
      bounced = b.bounce('xx')
      expect(bounced).to be_truthy
    end
  end

  describe 'Plant' do
    it 'return the correct point value' do
      plant = Plant.new
      rook_plants = plant.points
      expect(rook_plants).to be(5)
    end

    it 'return the correct name' do
      plant = Plant.new
      rook_plants = plant.name
      expect(rook_plants).to eq('rook')
    end

    it 'return a points value greater then pawn' do 
      plant = Plant.new
      rook_ponits =  plant.points
      expect(rook_ponits).to be_between(1, 10)
    end
  end

  describe 'plant' do 

    it 'calculates the correct credits remaining' do 
      plant = Plant.new
      plant.credits = 1.5
      plant.sub_credits(1.3)
      expect(plant.credits).to be_within(0.0001).of (0.19999)
    end

    it 'return an error when sub_credits is passed a zero credit value' do 
      plant = Plant.new
      plant.credits = 2
      expect {plant.sub_credits(0)}.to raise_exception(StandardError)
    end
  end 
end
