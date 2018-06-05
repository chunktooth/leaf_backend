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

plants = [
  {
    name: "Acicular",
    img: "https://imgur.com/jRGfZO4"
  },

  {
    name: "Acuminate",
    img: "https://imgur.com/8fbHnse" 
  },

  {
    name: "Alternate",
    img: "https://imgur.com/vUq0awP" 
  },

  {
    name: "Aristate",
    img: "https://imgur.com/CzWB2Rr" 
  },

  {
    name: "Bipinnate",
    img: "https://imgur.com/4l87yXI"
  },

  {
    name: "Cordate",
    img: "https://imgur.com/8rMzCtS"
  },

  {
    name: "Cuneate",
    img: "https://imgur.com/zrtQyxN"
  },

  {
    name: "Deltoid",
    img: "https://imgur.com/pg3npKU"
  },

  {
    name: "Digitate",
    img: "https://imgur.com/zjYbNit"
  },

  {
    name: "Elliptic",
    img: "https://imgur.com/3kz3eg6"
  },

  {
    name: "Even-Pinnate",
    img: "https://imgur.com/ONPHQVl",
  },

  {
    name: "Falcate",
    img: "https://imgur.com/W3lo09F"
  },

  {
    name: "Flabellate",
    img: "https://imgur.com/GLCAC6S"
  },

  {
    name: "Hastate",
    img: "https://imgur.com/swMY6VU"
  },

  {
    name: "Lanceolate",
    img: "https://imgur.com/YHNBIn2"
  },

  {
    name: "Linear",
    img: "https://imgur.com/BI27kJ4"
  },

  {
    name: "Lobed",
    img: "https://imgur.com/fQTwrUF"
  },

  {
    name: "Obcordate",
    img: "https://imgur.com/gcvBsk0"
  },

  {
    name: "Obovate",
    img: "https://imgur.com/Te4mJEz"
  },

  {
    name: "Obtuse",
    img: "https://imgur.com/lhlKkij"
  },

  {
    name: "Odd-pinnate",
    img: "https://imgur.com/inVBN65"
  },

  {
    name: "Opposite",
    img: "https://imgur.com/inVBN65"
  },

  {
    name: "Orbicular",
    img: "https://imgur.com/GQFDvHK"
  },

  {
    name: "Ovate",
    img: "https://imgur.com/ajEWEk0"
  },

  {
    name: "Palmate",
    img: "https://imgur.com/IwFrMr0"
  },

  {
    name: "Pedate",
    img: "https://imgur.com/Fire4n4"
  },

  {
    name: "Pelate",
    img: "https://imgur.com/MYbSoHa"
  },

  {
    name: "Perfoliate",
    img: "https://imgur.com/355IY0I"
  },

  {
    name: "Pinnatisect",
    img: "https://imgur.com/IBy6bQa"
  },

  {
    name: "Reniform",
    img: "https://imgur.com/GJp4gdl"
  },

  {
    name: "Rhomboid",
    img: "https://imgur.com/AHqrbZ3"
  },

  {
    name: "Rosette",
    img: "https://imgur.com/H2Fipx9"
  },

  {
    name: "Spatulate",
    img: "https://imgur.com/oXXGMvB"
  },

  {
    name: "Spear-shaped",
    img: "https://imgur.com/eNJyGLd"
  },

  {
    name: "Subulate",
    img: "https://imgur.com/By5V3j7"
  },

  {
    name: "Trifoliate / Ternate",
    img: "https://imgur.com/NVQ1HQb"
  },

  {
    name: "Tripinnate",
    img: "https://imgur.com/OAblk4D"
  },

  {
    name: "Truncate",
    img: "https://imgur.com/uFiYXA5"
  },

  {
    name: "Unifoliate",
    img: "https://imgur.com/z3mYTbn"
  },

  {
    name: "Whorled",
    img: "https://imgur.com/UeGoFmC"
  },
]

plants.each do | plant |
  user.plants.create!(plant)
end

p "Created #{User.count} users and #{Plant.count} plants"