require 'rails_helper'

describe Organization do
  before :each do
    Organization.destroy_all
    @organization = Organization.create(name: "PETA")
  end

  it "validates the presence of the name" do
    @organization.save
    expect(@organization.name).to eql("PETA")
  end

  it "validates the uniqueness of the name" do
    @organization.save
    new_organization = Organization.create(name: "PETA")
    expect(new_organization).to be_invalid
  end
end
