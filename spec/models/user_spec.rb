require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    @user = User.create(name: 'Jay', email: 'Jay@gmail.com', password: '112233')
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should have a correct value' do
    expect(subject.name).to eql 'Jay'
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'email should have a correct value' do
    expect(subject.email).to eql 'jay@gmail.com'
  end
end
