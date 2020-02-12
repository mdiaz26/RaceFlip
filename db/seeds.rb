# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

User.delete_all
Car.delete_all
UserCar.delete_all

acura1 = Car.create(make:"Acura", model:"TL",  cost:28000, top_speed: 125, image_url: "https://www.netcarshow.com/Acura-TL-2012.jpg")
bmw1 = Car.create(make: "BMW", model: "5-series", cost: 47500, top_speed: 148, image_url: "https://www.netcarshow.com/BMW-5-Series-2017-1280-05.jpg")
ford1 = Car.create(make:"Ford",model: "Mustang", cost: 35000, top_speed: 160, image_url: "https://www.netcarshow.com/Ford-Mustang_GT_Performance_Pack_Level_2-2018.jpg")
tesla1 = Car.create(make:"Tesla",model: "ModelX", cost: 100000, top_speed: 160, image_url: "https://www.netcarshow.com/Tesla-Model_X-2017-1280-04.jpg")
honda1 = Car.create(make:"Honda",model: "Accord", cost: 40000, top_speed: 120, image_url: "https://www.netcarshow.com/Honda-Accord-2018-pics-1.jpg")
bugatti1 = Car.create(make:"Bugatti",model: "Chiron", cost: 2000000, top_speed: 235, image_url: "https://www.netcarshow.com/Bugatti-Chiron_Sport-2019-1280-01.jpg")
tesla2 = Car.create(make:"Tesla",model: "Roadster", cost: 180000, top_speed: 212, image_url: "https://www.netcarshow.com/Tesla-Roadster-2020-infographic.jpg")
rolls_royce1 = Car.create(make:"Rolls-Royce",model: "Phantom", cost: 1000000, top_speed: 195, image_url: "https://www.netcarshow.com/Rolls-Royce-Phantom_in_Madrid-2005-1280-03.jpg")
lexus1 = Car.create(make:"Lexus",model: "LFA", cost: 200000, top_speed: 175, image_url: "https://www.netcarshow.com/Lexus-LFA_Nurburgring_Package-2012-pics-1.jpg")
dodge1 = Car.create(make:"Dodge",model: "Charger", cost: 30000, top_speed: 140, image_url: "https://www.netcarshow.com/Dodge-Charger_SRT_Hellcat_Widebody-2020-pics-1.jpg")
bently2 = Car.create(make:"Bently",model: "Bentayga", cost: 250000, top_speed: 185, image_url: "https://www.netcarshow.com/Bentley-Bentayga_V8-2018-pics-1.jpg")
toyota1 = Car.create(make:"Toyota",model: "Camary", cost: 30000, top_speed: 115, image_url: "https://www.netcarshow.com/Toyota-Camry-2018-pics-1.jpg")
toyota2 = Car.create(make:"Toyota",model: "Carola", cost: 38000, top_speed: 120, image_url: "https://www.netcarshow.com/Toyota-Corolla_Sedan-2020-1280-06.jpg")
ford2 = Car.create(make:"Ford",model: "F150", cost: 55000, top_speed: 145, image_url: "https://www.netcarshow.com/Ford-F150_Harley_Davidson-2006-1280-01.jpg")
cadillac1 = Car.create(make:"Cadillac",model: "Escalade",cost: 65000, top_speed: 155, image_url: "https://www.netcarshow.com/Cadillac-Escalade-2021-pics-1.jpg?ts=1580870915")
cadillac2 = Car.create(make:"Cadillac",model: "CTS",cost: 85000, top_speed: 165, image_url: "https://www.netcarshow.com/Cadillac-CTS-2014-pics-1.jpg")
jeep1 = Car.create(make:"Jeep",model: "Wrangler",cost: 35000, top_speed: 120, image_url: "https://www.netcarshow.com/Jeep-Wrangler_Unlimited_EU-Version-2018-pics-1.jpg")
jeep2 = Car.create(make:"Jeep",model: "Cherokee",cost: 42550, top_speed: 132, image_url: "https://www.netcarshow.com/Jeep-Cherokee-2019-pics-1.jpg")
lamborghini1 = Car.create(make:"Lamborghini",model: "Aventador",cost: 370000, top_speed: 203, image_url: "https://www.netcarshow.com/Lamborghini-Aventador_SVJ_Roadster-2020-pics-1.jpg")
Maybach1 = Car.create(make:"Maybach",model: "S560",cost: 265000, top_speed: 175, image_url: "https://www.netcarshow.com/Mercedes-Benz-S560e-2018-pics-1.jpg")
chevrolet1 = Car.create(make:"Chevrolet",model: "Corvette",cost: 65000, top_speed:182, image_url: "https://www.netcarshow.com/Chevrolet-Corvette-2005-pics-1.jpg")
chevrolet2 = Car.create(make:"Chevrolet",model: "C8Corvette-Z06",cost: 475000, top_speed:216, image_url: "https://www.netcarshow.com/Chevrolet-Corvette_Z06_C7.R_Edition-2016-pics-1.jpg")
ferrari1 = Car.create(make:"Ferrari",model: "458italia",cost: 280000, top_speed: 207, image_url: "https://www.netcarshow.com/Ferrari-458_Italia_Grand_Am-2012-pics-1.jpg")
ferrari2 = Car.create(make:"Ferrari",model: "LaFerrari",cost: 1750000, top_speed: 235, image_url: "https://www.netcarshow.com/Ferrari-LaFerrari_Aperta-2017-1280-04.jpg")
porche1 = Car.create(make:"Porche",model: "911",cost: 230000, top_speed: 190, image_url: "https://www.netcarshow.com/Porsche-911_Carrera-2016-1280-03.jpg")
porche2 = Car.create(make:"Porche",model: "Panamera",cost: 300000, top_speed:201, image_url: "https://www.netcarshow.com/Porsche-Panamera-2017-1280-1b.jpg")
mercedez_benz = Car.create(make:"Mercedes-Benz",model: "S-class", cost: 150000, top_speed: 179, image_url: "https://www.netcarshow.com/Porsche-Panamera-2017-1280-1b.jpg")
mercedez_benz2 = Car.create(make:"Mercedes-Benz",model: "G-Wagon", cost: 275000, top_speed: 185, image_url: "https://www.netcarshow.com/Mercedes-Benz-G-Class-2019-pics-1.jpg")
dodge1 = Car.create(make:"Dodge",model: "V12Challenger-HellCat", cost: 89000, top_speed: 183, image_url: "https://www.netcarshow.com/Mercedes-Benz-G-Class-2019-pics-1.jpg")

acura2 = Car.create(make:"Acura", model:"NSX-GT3",  cost:500000, top_speed: 211, image_url: "https://www.netcarshow.com/Acura-NSX-2020-pics-1.jpg")
bmw2 = Car.create(make: "BMW", model: "M3", cost: 75000, top_speed: 175, image_url: "https://www.netcarshow.com/BMW-M3_CS-2018-pics-1.jpg")
honda3 = Car.create(make:"Honda",model: "Civic-TypeR", cost: 62000, top_speed: 169, image_url: "https://www.netcarshow.com/Honda-Civic_Type_R-2018-pics-1.jpg")
bugatti2 = Car.create(make:"Bugatti",model: "Veyron", cost: 3250000, top_speed: 267, image_url: "https://www.netcarshow.com/Bugatti-Vision_Gran_Turismo_Concept-2015-1280-01.jpg")
bugatti3 = Car.create(make:"Bugatti",model: "Divo", cost: 5000000, top_speed: 255, image_url: "https://www.netcarshow.com/Bugatti-Vision_Gran_Turismo_Concept-2015-1280-01.jpg")
rolls_royce2 = Car.create(make:"Rolls-Royce",model: "Ghost", cost: 350000, top_speed: 155, image_url: "https://www.netcarshow.com/Rolls-Royce-Ghost_V-Specification-2015-1280-01.jpg")
bently2 = Car.create(make:"Bently",model: "Mulsanne", cost: 310000, top_speed: 197, image_url: "https://www.netcarshow.com/Bentley-Mulsanne_Speed-2017-pics-1.jpg")
toyota3 = Car.create(make:"Toyota",model: "GR-Supra", cost: 195000, top_speed: 180, image_url: "https://www.netcarshow.com/Toyota-GR_Supra_Racing_Concept-2018-pics-1.jpg")
lamborghini2 = Car.create(make:"Lamborghini",model: "Huracan-EVO",cost: 775000, top_speed: 211, image_url: "https://www.netcarshow.com/Lamborghini-Reventon-2008-thumb-08.jpg")
nissan1 = Car.create(make:"Nissan",model: "Maxima-SR",cost: 50000, top_speed: 164, image_url: "https://www.netcarshow.com/Nissan-Maxima-2019-pics-1.jpg")
nissan2 = Car.create(make:"Nissan",model: "GT-R",cost: 115000, top_speed: 198, image_url: "https://www.netcarshow.com/Nissan-GT-R_Nismo-2020-pics-1.jpg")
audi1 = Car.create(make:"Audi",model: "R8",cost: 180000, top_speed: 205, image_url: "https://www.netcarshow.com/Audi-R8_V10_RWD_Spyder-2020-1280-01.jpg")
mclaren1 = Car.create(make:"McLaren",model: "720s-Spider",cost: 315000, top_speed: 211, image_url: "https://www.netcarshow.com/McLaren-720S_Spider_by_MSO-2019-pics-1.jpg")
maserati1 = Car.create(make:"Maserati",model: "MC12-Corsa",cost: 1500000, top_speed: 223, image_url: "https://www.netcarshow.com/Maserati-MC12_Corsa-2006-pics-1.jpg")
jaguar1 = Car.create(make:"Jaguar",model: "F-Type",cost: 85000, top_speed: 200, image_url: "https://www.netcarshow.com/Jaguar-F-Type-2021-pics-1.jpg?ts=1581331038")  
ford3 = Car.create(make:"Ford",model: "GT",cost: 500000, top_speed: 225, image_url: "https://www.netcarshow.com/Ford-GT-2020-1280-08.jpg")
aston_martin1 = Car.create(make:"Aston Martin",model: "DB4GT-CONTINUATION",cost: 1950000, top_speed: 215, image_url: "https://www.netcarshow.com/Aston_Martin-DB4_GT_Continuation-2018-1280-01.jpg")
aston_martin2 = Car.create(make:"Aston Martin",model: "Valkyrie",cost: 3200000, top_speed: 255, image_url: "https://www.netcarshow.com/Aston_Martin-Valkyrie-2018-1280-06.jpg")
ferrari3 = Car.create(make:"Ferrari",model: "Monza-SP2",cost: 2300000, top_speed: 247, image_url: "https://www.netcarshow.com/Ferrari-Monza_SP2-2019-pics-1.jpg")
mclaren2 = Car.create(make:"McLaren",model: "Senna",cost: 975000, top_speed: 208, image_url: "https://www.netcarshow.com/McLaren-Senna_GTR-2020-1280-03.jpg")
mercedez_benz3 = Car.create(make:"Mercedes-Benz",model: "ProjectONE", cost: 2600000, top_speed: 230, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmdlx5RPvuf4yoBYYey-AsMyLJ2-F0at9x3ql7Z1ZYGDuTwg6-")
hennessey1 = Car.create(make:"Hennessey",model: "VenomF5", cost: 1900000, top_speed: 260, image_url: "https://www.netcarshow.com/Hennessey-Venom_GT-2011-pics-1.jpg")
range1 = Car.create(make:"RangeRover",model: "VelarSVR", cost: 285000, top_speed: 196, image_url: "https://www.netcarshow.com/Land_Rover-Range_Rover_Velar_R-Dynamic_Black-2020-pics-1.jpg")


User.create(name:"Anthony", password: "test")
User.create(name:"Mike", password: "test")
User.create(name:"Kent", password: "test")

4.times do UserCar.create(user_id:User.first.id,car_id:Car.all.sample.id)
end
4.times do UserCar.create(user_id:User.second.id,car_id:Car.all.sample.id)
end
4.times do UserCar.create(user_id:User.third.id,car_id:Car.all.sample.id)
end