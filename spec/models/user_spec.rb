require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#first_name' do
    context 'when length <= 24' do
      it 'is valid' do
        expect(build(:user, first_name: 'Julia')).to be_valid
      end
    end
    context 'when length > 24' do
      it 'is not valid' do
        expect(build(:user, first_name: 'a' * 25))
          .to_not be_valid
      end
    end
    context 'when includes not only letters' do
      it 'is not valid' do
        expect(build(:user, first_name: 'Julia:)')).to_not be_valid
      end
    end
  end

  describe '#last_name' do
    context 'when length <= 24' do
      it 'is valid' do
        expect(build(:user, last_name: "O'Nell")).to be_valid
      end
    end
    context 'when length > 24' do
      it 'is not valid' do
        expect(build(:user, last_name: 'Ottovordemgentschenfeldelon'))
          .to_not be_valid
      end
    end
    context 'when includes not only letters' do
      it 'is not valid' do
        expect(build(:user, last_name: 'Shtohryn(Ilkiv)')).to_not be_valid
      end
    end
  end

  describe '#gender' do
    context "when is from 'male', 'female', 'other'" do
      it 'is valid' do
        expect(build(:user, gender: :male)).to be_valid
      end
    end
  end
end
