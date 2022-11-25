# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "TestUser")

Bike.create([
  {
    brand: "Ducati",
    model: "Monster SP",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/2DFD4d569TegcMRxUH8wLy/5973feabf0df731afdfdda82ed8d6caa/MONSTER_SP_TURNTABLE_00.png?w=1920&fm=webp&q=95",
    power: 111,
    weight: 166,
    price: 110
  },
  {
    brand: "Ducati",
    model: "Multistrada V4 Rally",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/2VZgctf0yUAly2md6gc1Ac/fcef1cda0e65d0173fdedca81157fa52/MSV4_RALLY_RED_47.png?w=1920&fm=webp&q=95",
    power: 170,
    weight: 227,
    price: 200
  },
  {
    brand: "Ducati",
    model: "Diavel V4",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/1dL0ilx4g9eUV1NHfvLeHE/ca7707e59bab41e8a6181ce9f9a84aaf/SPIN_DIAVEL_V4_RED.01.png?w=1920&fm=webp&q=95",
    power: 168,
    weight: 211,
    price: 180
  },
  {
    brand: "Ducati",
    model: "DesertX",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/VHOopIiazWZ7RFWig61gd/25cec23c87f1be55054bfb177998416e/DESERT_X_TURNTABLE_VER_G_00.png?w=1920&fm=webp&q=95",
    power: 110,
    weight: 202,
    price: 150
  },
  {
    brand: "Ducati",
    model: "Streetfighter V4 Lamborghini",
    photo: "",
    power: 208,
    weight: 178,
    price: 310
  },
  {
    brand: "Ducati",
    model: "Panigale V4 R",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/785XKRCdpoCCJBmkJBag9x/65cbac2f5e2d40201f845ccd68bbb46c/PANV4R_SPIN_SCARICO_ALTO_E_FRIZIONE_00.png?w=1920&fm=webp&q=95",
    power: 237,
    weight: 167,
    price: 330
  },
])

Reservation.create(user_id: User.first.id, bike_id: Bike.first.id, date: "27/06/2023", location: "São Paulo - BR")
