require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'has a valid factory' do
    expect(build(:event)).to be_valid
  end

  context 'is invalid' do
    it 'without a name' do
      event = build(:event, name: nil)
      event.valid?
      expect(event.errors[:name]).to include("can't be blank")
    end

    it 'without a location' do
      event = build(:event, location: nil)
      event.valid?
      expect(event.errors[:location]).to include("can't be blank")
    end

    it 'without a start_date' do
      event = build(:event, start_date: nil)
      event.valid?
      expect(event.errors[:start_date]).to include("can't be blank")
    end

    it 'without a end_date' do
      event = build(:event, end_date: nil)
      event.valid?
      expect(event.errors[:end_date]).to include("can't be blank")
    end

    it 'without a workload' do
      event = build(:event, workload: nil)
      event.valid?
      expect(event.errors[:workload]).to include("can't be blank")
    end
  end

  context 'is valid' do
  end
end
