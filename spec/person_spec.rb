require 'spec_helper'

describe "Testing 'Person' object given only age" do
  before :each do
    @person = Person.new(27)
  end

  it 'Should be a person object' do
    expect(@person).to be_an_instance_of(Person)
  end

  it "Should set the name to 'Unknown'" do
    expect(@person.name).to eq('Unknown')
  end

  it 'Should have the parent_permission variable set to true' do
    expect(@person.can_use_services?).to be(true)
  end
end

describe "Testing 'Person' and given age and name" do
  before :each do
    @person = Person.new(27, 'Person1')
  end

  it 'Should be a person object' do
    expect(@person).to be_an_instance_of(Person)
  end

  it "Should set the name to 'Unknown'" do
    expect(@person.name).to eq('Person1')
  end

  it 'Should have the parent_permission variable set to true' do
    expect(@person.can_use_services?).to be(true)
  end
end
