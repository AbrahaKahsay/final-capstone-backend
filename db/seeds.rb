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
    price: 110,
    description: "The Monster range grows with the SP version, designed to enhance fun, thanks to technical equipment perfect for those who love sporty riding and embellish style with the Moto GP-inspired livery."
  },
  {
    brand: "Ducati",
    model: "Multistrada V4 Rally",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/2VZgctf0yUAly2md6gc1Ac/fcef1cda0e65d0173fdedca81157fa52/MSV4_RALLY_RED_47.png?w=1920&fm=webp&q=95",
    power: 170,
    weight: 227,
    price: 200,
    description: "The new Multistrada V4 Rally is the ideal travel companion in all conditions, as easy and intuitive in the urban jungle as it is on the most daring off-road routes."
  },
  {
    brand: "Ducati",
    model: "Diavel V4",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/1dL0ilx4g9eUV1NHfvLeHE/ca7707e59bab41e8a6181ce9f9a84aaf/SPIN_DIAVEL_V4_RED.01.png?w=1920&fm=webp&q=95",
    power: 168,
    weight: 211,
    price: 180,
    description: "Muscular, sporty, exaggerated and elegant at the same time, able to magnetize attention in any context, Diavel V4 synthesizes seemingly distant technical, dynamic and stylistic features, such as those of sport nakeds and muscle cruisers."
  },
  {
    brand: "Ducati",
    model: "DesertX",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/VHOopIiazWZ7RFWig61gd/25cec23c87f1be55054bfb177998416e/DESERT_X_TURNTABLE_VER_G_00.png?w=1920&fm=webp&q=95",
    power: 110,
    weight: 202,
    price: 150,
    description: "Exploration. Fun. Performance. And a great desire to take and leave towards the horizon. The identity of this bike leaves no room for doubt: just looking at it, it brings you into the atmosphere of Dakar racing."
  },
  {
    brand: "Ducati",
    model: "Streetfighter V4 Lamborghini",
    photo: "",
    power: 208,
    weight: 178,
    price: 310,
    description: "The second chapter of the collaboration between two brands that have contributed to writing the history of Motor Valley, gives birth to the new Ducati Streetfighter V4 Lamborghini, with a dedicated livery and a specially designed dressing to recall the design of the famous Lamborghini Huracán STO (Super Trofeo homologated)."
  },
  {
    brand: "Ducati",
    model: "Panigale V4 R",
    photo: "https://images.ctfassets.net/x7j9qwvpvr5s/785XKRCdpoCCJBmkJBag9x/65cbac2f5e2d40201f845ccd68bbb46c/PANV4R_SPIN_SCARICO_ALTO_E_FRIZIONE_00.png?w=1920&fm=webp&q=95",
    power: 237,
    weight: 167,
    price: 330,
    description: "Ducati presents the new Panigale V4 R: the bike that adopts technical solutions previously reserved for MotoGP and WorldSBK Championship. The closest production model to a competition bike ever."
  },
])

Reservation.create(user_id: User.first.id, bike_id: Bike.first.id, start_date: "27/06/2023", end_date: "27/06/2023", location: "São Paulo - BR")
