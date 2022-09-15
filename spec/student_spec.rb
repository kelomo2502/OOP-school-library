require 'spec_helper'

describe "Testing 'Person' object given only age" do
  before :each do
    @student = Student.new(18, 'Chemistry')
  end

  it 'Should be a person object' do
    expect(@student).to be_kind_of(Person)
  end

  it "Should set the name to 'Unknown'" do
    expect(@student.name).to eq('Unknown')
  end

  it "Should have the classroom to be 'Chemistry'" do
    expect(@student.classroom).to eq('Chemistry')
  end

  it 'Should be able to use services' do
    expect(@student.can_use_services?).to be true
  end

  it "Setting the student name to 'Student1'" do
    @student.name = 'Student1'
    expect(@student.name).to eq('Student1')
  end
end
