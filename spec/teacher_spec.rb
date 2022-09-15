require 'spec_helper'

describe "Testing 'Teacher' object " do
  before :each do
    @teacher = Teacher.new(43, 'Physics')
  end

  it 'Should be a person object' do
    expect(@teacher).to be_kind_of(Person)
  end

  it "Should set the name to 'Unknown'" do
    expect(@teacher.name).to eq('Unknown')
  end

  it "Should have the specialization to be 'Physics'" do
    expect(@teacher.specialization).to eq('Physics')
  end

  it 'Should be able to use services' do
    expect(@teacher.can_use_services?).to be true
  end

  it "Setting the teacher name to 'Teacher'" do
    @teacher.name = 'Teacher'
    expect(@teacher.name).to eq('Teacher')
  end
end
