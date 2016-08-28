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

      expect(page.find('h1:nth-child(1)')).to have_content 'GZA'
      expect(page.find('h1:nth-child(4)')).to have_content 'RZA'
      expect(page.find('h1:nth-child(7)')).to have_content 'Method Man'

      click_link('order_by_created_at')

      expect(page.find('h1:nth-child(1)')).to have_content 'GZA'
      expect(page.find('h1:nth-child(4)')).to have_content 'Method Man'
      expect(page.find('h1:nth-child(7)')).to have_content 'RZA'
    end

    it 'has a link to order the artists by created_at' do
    end
end
