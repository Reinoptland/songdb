require 'rails_helper'

RSpec.describe Song, type: :model do
  it "is valid with valid attributes"do
    expect(Song.new).to be_valid
  end
end
