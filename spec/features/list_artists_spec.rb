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
    
end
