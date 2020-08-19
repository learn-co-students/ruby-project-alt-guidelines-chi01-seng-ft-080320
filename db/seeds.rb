Passenger.destroy_all
Flight.destroy_all

#passengers
p1 = Passenger.create(name: "Josue", destination: "Guadalajara")

#flights
f1 = Flight.create(airline_name: "Aeromexico", date: "12-12-2020", destination: "Guadalajara")

#tickets
Ticket.create(passenger_id: p1.id, flight_id:f1.id, baggage: "true")
