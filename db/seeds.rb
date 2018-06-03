# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Plant.destroy_all

user = User.create!(name: "Opaka", username: "O", password: "111")

plants = [{
  name: "Paper Birch",
  sci_name: "Betula papyrifera",
  img: "http://www.northernontarioflora.ca/images/descriptions/1000176_6.jpg", 
  },
  {
  name: "Quaking Aspen",
  sci_name: "Populus tremuloides",
  img: "https://newfs.s3.amazonaws.com/taxon-images-1000s1000/Salicaceae/populus-tremuloides-le-mlovit.jpg",
  },
  {
  name: "Rocky Mountain Juniper",
  sci_name: "Juniperus scopulorum",
  img: "https://www.crimson-sage.com/images/stories/virtuemart/product/rocky-mountain-juniper---juniperus-scopulorum.jpg",
  }]

plants.each do | plant |
  user.plants.create!(plant)
end

p "Created #{User.count} users and #{Plant.count} plants"