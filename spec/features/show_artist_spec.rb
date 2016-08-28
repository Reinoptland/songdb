require 'rails_helper'

describe 'It shows the artist\'s details' do

  it "shows the artist\'s details" do

  gza = Artist.create(id: 10, name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States",)

  visit "http://example.com/artists/10"

  expect(page).to have_text(gza.name)
  expect(page).to have_text(gza.birth_date)
  expect(page).to have_text(gza.country_of_origin)

  end
end
