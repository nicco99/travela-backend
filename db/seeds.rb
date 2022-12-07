puts "🌱 Seeding..."

Bus.create(seats: 35, number_plate: "KBX 345Y", driver_number: "254712345678")
Bus.create(seats: 55, number_plate: "KCX 944G", driver_number: "254716344678")
Bus.create(seats: 35, number_plate: "KBV 843H", driver_number:" 254712345678")
Bus.create(seats: 14, number_plate: "KAX 743T", driver_number: "254712456678")
Bus.create(seats: 35, number_plate: "KCC 643H", driver_number: "254714345678")
Bus.create(seats: 59, number_plate: "KDK 543D", driver_number: "254722366678")

Route.create(start: "NAIROBI", destination: "MOMBASA", price: 2000, name:"NRB-MSA")
Route.create(start: "MOMBASA", destination: "NAIROBI" ,price: 2000, name:"MSA-NRB")
Route.create(start: "NAIROBI", destination: "NAKURU", price: 1500, name:"NRB-NKR")
Route.create(start: "NAKURU", destination: "NAIROBI", price: 1000, name:"NKR-NRB")

Passenger.create(email: "isaac@gmail.com", password:"hellooo", password_confirmation: "hellooo", p_number: "254712345678", username: "isaac" )

Trip.create(bus_id: 1 , route_id: 1, departure: Time.new(2022, 12 , 5, 8, 00))
Trip.create(bus_id: 2 , route_id: 2, departure: Time.new(2022, 12 , 5, 9, 00))
Trip.create(bus_id: 3 , route_id: 3, departure: Time.new(2022, 12 , 5, 10, 00))
Trip.create(bus_id: 4 , route_id: 4, departure: Time.new(2022, 12 , 5, 11, 00))

Trip.create(bus_id: 2 , route_id: 1, departure: Time.new(2022, 12 , 6, 8, 00))
Trip.create(bus_id: 1 , route_id: 2, departure: Time.new(2022, 12 , 6, 9, 00))
Trip.create(bus_id: 4 , route_id: 3, departure: Time.new(2022, 12 , 6, 10, 00))
Trip.create(bus_id: 3 , route_id: 4, departure: Time.new(2022, 12 , 6, 11, 00))

Trip.create(bus_id: 1 , route_id: 1, departure: Time.new(2022, 12 , 7, 8, 00))
Trip.create(bus_id: 2 , route_id: 2, departure: Time.new(2022, 12 , 7, 9, 00))
Trip.create(bus_id: 3 , route_id: 3, departure: Time.new(2022, 12 , 7, 10, 00))
Trip.create(bus_id: 4 , route_id: 4, departure: Time.new(2022, 12 , 7, 11, 00))

Trip.create(bus_id: 2 , route_id: 1, departure: Time.new(2022, 12 , 8, 8, 00))
Trip.create(bus_id: 1 , route_id: 2, departure: Time.new(2022, 12 , 8, 9, 00))
Trip.create(bus_id: 4 , route_id: 3, departure: Time.new(2022, 12 , 8, 10, 00))
Trip.create(bus_id: 3 , route_id: 4, departure: Time.new(2022, 12 , 8, 11, 00))

Trip.create(bus_id: 1 , route_id: 1, departure: Time.new(2022, 12 , 9, 8, 00))
Trip.create(bus_id: 2 , route_id: 2, departure: Time.new(2022, 12 , 9, 9, 00))
Trip.create(bus_id: 3 , route_id: 3, departure: Time.new(2022, 12 , 9, 10, 00))
Trip.create(bus_id: 4 , route_id: 4, departure: Time.new(2022, 12 , 9, 11, 00))

Trip.create(bus_id: 2 , route_id: 1, departure: Time.new(2022, 12 , 10, 8, 00))
Trip.create(bus_id: 1 , route_id: 2, departure: Time.new(2022, 12 , 10, 9, 00))
Trip.create(bus_id: 4 , route_id: 3, departure: Time.new(2022, 12 , 10, 10, 00))
Trip.create(bus_id: 3 , route_id: 4, departure: Time.new(2022, 12 , 10, 11, 00))

Booking.create!(trip_id: 1, passenger_id: 1,status: "pending")
Booking.create!(trip_id: 2, passenger_id: 1,status: "pending")
Booking.create!(trip_id: 3, passenger_id: 1,status: "pending")
Booking.create!(trip_id: 4, passenger_id: 1, status: "pending")

Review.create(comment: "jwdnncejncne",rating: 2,booking_id: 1 )

puts "✅ Done seeding!"
