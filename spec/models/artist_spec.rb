require 'rails_helper'

RSpec.describe Artist, type: :model do
  it "is valid with valid attributes" do
    expect(Artist.new).to be_valid
  end
end
