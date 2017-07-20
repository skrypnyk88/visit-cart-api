require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe '#first_name' do
    context 'when length <= 24' do
      it 'is valid' do
        expect(build(:cart, first_name: 'Julia')).to be_valid
      end
    end
    context 'when length > 24' do
      it 'is not valid' do
        expect(build(:cart, first_name: 'a' * 25))
          .to_not be_valid
      end
    end
    context 'when includes not only letters' do
      it 'is not valid' do
        expect(build(:cart, first_name: 'Julia:)')).to_not be_valid
      end
    end
  end

  describe '#last_name' do
    context 'when length <= 24' do
      it 'is valid' do
        expect(build(:cart, last_name: "O'Nell")).to be_valid
      end
    end
    context 'when length > 24' do
      it 'is not valid' do
        expect(build(:cart, last_name: 'Ottovordemgentschenfeldelon'))
          .to_not be_valid
      end
    end
    context 'when includes not only letters' do
      it 'is not valid' do
        expect(build(:cart, last_name: 'Shtohryn(Ilkiv)')).to_not be_valid
      end
    end
  end

  describe '#visible' do
    context "when is from 'true', 'false'" do
      it 'is valid' do
        expect(build(:cart, visible: true)).to be_valid
      end
    end
  end
end
