require 'rails_helper'

RSpec.describe Artist, type: :model do
  it "is valid with valid attributes" do
    expect(Artist.new).to be_valid
  end

  it 'returns artists ordered by which was created most recent' do
    artist_1 = Artist.create(created_at: 3.weeks.ago )
    artist_2 = Artist.create(created_at: 1.weeks.ago )
    artist_3 = Artist.create(created_at: 2.weeks.ago )

    expect(Artist.order_by_created_at).to eq([artist_2, artist_3, artist_1])
  end
end
