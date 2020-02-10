# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Car.delete_all
UserCar.delete_all



acura1 = Car.create(make:"Acura", model:"TL",  cost:28000, top_speed: 125)
bmw1 = Car.create(make: "BMW", model: "5-series", cost: 47500, top_speed: 148)
ford1 = Car.create(make:"Ford",model: "Mustang", cost: 35000, top_speed: 160)
tesla1 = Car.create(make:"Tesla",model: "ModelX", cost: 100000, top_speed: 160)
honda1 = Car.create(make:"Honda",model: "Accord", cost: 40000, top_speed: 120)
bugatti1 = Car.create(make:"Bugatti",model: "Chiron", cost: 2000000, top_speed: 235)
tesla2 = Car.create(make:"Tesla",model: "Roadster", cost: 180000, top_speed: 212)
rolls_royce1 = Car.create(make:"Rolls-Royce",model: "Phantom", cost: 1000000, top_speed: 195)
lexus1 = Car.create(make:"Lexus",model: "LFA", cost: 200000, top_speed: 175)
dodge1 = Car.create(make:"Dodge",model: "Charger", cost: 30000, top_speed: 140)
bently2 = Car.create(make:"Bently",model: "Bentaya", cost: 250000, top_speed: 185)
toyota1 = Car.create(make:"Toyota",model: "Camary", cost: 30000, top_speed: 115)
toyota2 = Car.create(make:"Toyota",model: "Carola", cost: 38000, top_speed: 120)
ford2 = Car.create(make:"Ford",model: "F150", cost: 55000, top_speed: 145)
cadillac1 = Car.create(make:"Cadillac",model: "Escalade",cost: 65000, top_speed: 155)
cadillac2 = Car.create(make:"Cadillac",model: "CTS",cost: 85000, top_speed: 165)
jeep1 = Car.create(make:"Jeep",model: "Wrangler",cost: 35000, top_speed: 120)
jeep2 = Car.create(make:"Jeep",model: "Cherokee",cost: 42550, top_speed: 132)
lamborghini1 = Car.create(make:"Lamborghini",model: "Aventador",cost: 370000, top_speed: 203)
Maybach1 = Car.create(make:"Maybach",model: "S560",cost: 265000, top_speed: 175)
chevrolet1 = Car.create(make:"Chevrolet",model: "Corvette",cost: 65000, top_speed:182)
chevrolet2 = Car.create(make:"Chevrolet",model: "C8Corvette-Z06",cost: 475000, top_speed:216)
ferrari1 = Car.create(make:"Ferrari",model: "458italia",cost: 280000, top_speed: 207)
ferrari2 = Car.create(make:"Ferrari",model: "LaFerrari",cost: 1750000, top_speed: 235)
porche1 = Car.create(make:"Porche",model: "911",cost: 230000, top_speed: 190)
porche2 = Car.create(make:"Porche",model: "Panamera",cost: 300000, top_speed:201)
mercedez_benz = Car.create(make:"Mercedes-Benz",model: "S-class", cost: 150000, top_speed: 179)
mercedez_benz2 = Car.create(make:"Mercedes-Benz",model: "G-Wagon", cost: 275000, top_speed: 185)
dodge1 = Car.create(make:"Dodge",model: "V12Challenger-HellCat", cost: 89000, top_speed: 183)

acura2 = Car.create(make:"Acura", model:"NSX-GT3",  cost:500000, top_speed: 211)
bmw2 = Car.create(make: "BMW", model: "M3", cost: 75000, top_speed: 175)
honda3 = Car.create(make:"Honda",model: "Civic-TypeR", cost: 62000, top_speed: 169)
bugatti2 = Car.create(make:"Bugatti",model: "Veryon", cost: 3250000, top_speed: 267)
bugatti3 = Car.create(make:"Bugatti",model: "Devo", cost: 5000000, top_speed: 255)
rolls_royce2 = Car.create(make:"Rolls-Royce",model: "Ghost", cost: 350000, top_speed: 155)
bently2 = Car.create(make:"Bently",model: "Mulsanne", cost: 310000, top_speed: 197)
toyota3 = Car.create(make:"Toyota",model: "GR-Supra", cost: 195000, top_speed: 180)
lamborghini2 = Car.create(make:"Lamborghini",model: "Huracan-EVO",cost: 775000, top_speed: 211)
nissan1 = Car.create(make:"Nissan",model: "Maxima-SR",cost: 50000, top_speed: 164)
nissan2 = Car.create(make:"Nissan",model: "GT-R",cost: 115000, top_speed: 198)
audi1 = Car.create(make:"Audi",model: "R8",cost: 180000, top_speed: 205)
mclaren1 = Car.create(make:"McLaren",model: "720s-Spider",cost: 315000, top_speed: 211)
maserati1 = Car.create(make:"Maserati",model: "MC12-Corsa",cost: 1500000, top_speed: 223)
jaguar1 = Car.create(make:"Jaguar",model: "F-Type",cost: 85000, top_speed: 200)  
ford3 = Car.create(make:"Ford",model: "GT",cost: 500000, top_speed: 225)
aston_martin1 = Car.create(make:"Aston Martin",model: "DB4GT-CONTINUATION",cost: 1950000, top_speed: 215)
aston_martin2 = Car.create(make:"Aston Martin",model: "Valkyrie",cost: 3200000, top_speed: 255)
ferrari3 = Car.create(make:"Ferrari",model: "Monza-SP2",cost: 2300000, top_speed: 247)
mclaren2 = Car.create(make:"McLaren",model: "Senna",cost: 975000, top_speed: 208)
mercedez_benz3 = Car.create(make:"Mercedes-Benz",model: "ProjectONE", cost: 2600000, top_speed: 230)
hennessey1 = Car.create(make:"Hennessey",model: "VenomF5", cost: 1900000, top_speed: 260)
range1 = Car.create(make:"RangeRover",model: "VelarSVR", cost: 285000, top_speed: 196)


User.create(name:"Anthony",wins:0,losses:0,balance:250000)
User.create(name:"Mike",wins:0,losses:0,balance:250000)
User.create(name:"Kent",wins:0,losses:0,balance:250000)

UserCar.create(user_id:User.first.id,car_id:Car.first.id,condition:100)
UserCar.create(user_id:User.second.id,car_id:Car.second.id,condition:100)
UserCar.create(user_id:User.third.id,car_id:Car.third.id,condition:100)