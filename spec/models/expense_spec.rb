require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject do
    @user = User.create(name: 'Jay', email: 'Jay@gmail.com', password: '112233')
    @expense = Expense.create(name: 'medical appointment', amount: 15, user: @user)
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should have valid value' do
    expect(subject.name).to eql 'medical appointment'
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'amount should have valid value' do
    expect(subject.amount).to eql 15
  end

  it 'amount should not be less than 0' do
    subject.amount = -1.0
    expect(subject).to_not be_valid
  end

  it 'user should be present' do
    subject.user = nil
    expect(subject).to_not be_valid
  end
end
