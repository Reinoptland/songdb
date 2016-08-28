require 'rails_helper'

describe 'It shows the artist\'s details' do

  it "shows the artist\'s details" do

    gza = Artist.create(id: 10, name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States",)

    visit "http://example.com/artists/10"

    expect(page).to have_text(gza.name)
    expect(page).to have_text(gza.birth_date)
    expect(page).to have_text(gza.country_of_origin)

  end

  it "shows the artist\'s songs" do
    gza = Artist.create(id: 1, name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States",)

    Song.create([
    {title:"Clan in da Front", duration: 273, artists: [gza]},
    {title:"Bring da Ruckus", duration: 250, artists: [gza]},
    ])

    visit "http://example.com/artists/1"

    expect(page).to have_text(gza.songs.first.title)
    expect(page).to have_text(gza.songs.second.title)
    expect(page).to have_text(gza.songs.first.duration)

  end

  it "Has a form to add a new song to the artist" do
    Artist.create(id: 1, name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States",)

    visit "http://example.com/artists/1"

    fill_in 'song_title', with: '4th Chamber'
    fill_in 'song_duration', with: 277
    click_on 'Create Song'

    sleep(1)

    expect(page).to have_content('4th Chamber')

  end
end
