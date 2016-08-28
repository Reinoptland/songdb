require 'rails_helper'

describe 'Visitors can see a list of all the artists in the database' do

    it 'shows the the artists' do

      gza = Artist.create(name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States",)
      rza = Artist.create(name: "RZA", birth_date:"1969-07-05", country_of_origin: "United States",)
      mm = Artist.create(name: "Method Man", birth_date:"1971-03-02", country_of_origin: "United States",)

      visit artists_url

      expect(page).to have_text(gza.name)
      expect(page).to have_text(gza.birth_date)
      expect(page).to have_text(gza.country_of_origin)
      expect(page).to have_text(rza.name)
      expect(page).to have_text(mm.name)
    end

    it 'has a link to order the artist by name' do
      gza = Artist.create(name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States",)
      rza = Artist.create(name: "RZA", birth_date:"1969-07-05", country_of_origin: "United States",)
      mm = Artist.create(name: "Method Man", birth_date:"1971-03-02", country_of_origin: "United States",)

      visit artists_url

      expect(page.find('h1:nth-child(3)')).to have_content 'GZA'
      expect(page.find('h1:nth-child(6)')).to have_content 'RZA'
      expect(page.find('h1:nth-child(9)')).to have_content 'Method Man'

      click_on("Order by artist name")

      expect(page.find('h1:nth-child(3)')).to have_content 'GZA'
      expect(page.find('h1:nth-child(6)')).to have_content 'Method Man'
      expect(page.find('h1:nth-child(9)')).to have_content 'RZA'
    end

    it 'has a link to order the artists by created_at' do

      gza = Artist.create(name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States", created_at: 3.weeks.ago)
      rza = Artist.create(name: "RZA", birth_date:"1969-07-05", country_of_origin: "United States", created_at: 1.weeks.ago)
      mm = Artist.create(name: "Method Man", birth_date:"1971-03-02", country_of_origin: "United States", created_at: 2.weeks.ago)

      visit artists_url

      expect(page.find('h1:nth-child(3)')).to have_content 'GZA'
      expect(page.find('h1:nth-child(6)')).to have_content 'RZA'
      expect(page.find('h1:nth-child(9)')).to have_content 'Method Man'

      click_on("Order by most recent")

      expect(page.find('h1:nth-child(3)')).to have_content 'RZA'
      expect(page.find('h1:nth-child(6)')).to have_content 'Method Man'
      expect(page.find('h1:nth-child(9)')).to have_content 'GZA'
    end
end
