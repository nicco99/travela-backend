puts "🌱 Seeding..."

Booking.create(trip_id: 1, passenger_id: 1, departure: "0900", start: "Mombasa", destination: "Nairobi")
Booking.create(trip_id: 2, passenger_id: 1, departure: "0900", start:"Nairobi", destination: "Mombasa")
Booking.create(trip_id: 2, passenger_id: 2, departure: "1900", start:"Nairobi", destination: "Mombasa")
Booking.create(trip_id: 1, passenger_id: 2, departure: "1900", start: "Mombasa", destination: "Nairobi")



Route.create(name: "Nairobi-Mombasa",price: 800, )
Route.create(name: "Mombasa-Nairobi",price: 1200, )

Trip.create(trip: "Day", bus_id: 1, route_id: 1, departure: "0900")
Trip.create(trip: "Day", bus_id: 2, route_id: 2, departure: "0900")
Trip.create(trip: "Night", bus_id: 2, route_id: 1, departure: "1900")
Trip.create(trip: "Night", bus_id: 1, route_id: 2, departure: "1900")

puts "✅ Done seeding!"