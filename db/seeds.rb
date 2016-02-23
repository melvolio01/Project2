require_relative "../models/landlord.rb"

Landlord.destroy_all

[

  {
  rating: 1,
  name: Rigsby,
  borough: Bromley
  },

  {
  rating: 3,
  name: Mr Landlord,
  borough: Ealing 
  },

  {
  rating: 5,
  name: Ms Landlord,
  borough: Islington
  }

].each do |landlord|
  Landlord.create!(landlord)
end