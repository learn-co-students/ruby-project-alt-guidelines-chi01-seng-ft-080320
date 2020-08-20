Passenger.destroy_all
Flight.destroy_all

#passengers
p1 = Passenger.create(name: "Josue", destination: "Guadalajara") 


#flights
f1 = Flight.create(airline_name: "Aeromexico", date: "12-12-2020", destination: "Guadalajara")
f2 = Flight.create(airline_name: "AirFrance", date: "12-12-2021", destination: "France")
f3 = Flight.create(airline_name: "Fly Emirates", date: "12-12-2022", destination: "Dubai")

#tickets
Ticket.create(passenger_id: p1.id, flight_id:f1.id, baggage: true)
Ticket.create(passenger_id: p1.id, flight_id:f2.id, baggage: true)
Ticket.create(passenger_id: p1.id, flight_id:f3.id, baggage: true)
