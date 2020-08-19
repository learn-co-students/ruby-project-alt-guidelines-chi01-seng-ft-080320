Passanger.destroy_all
Flight.destroy_all

#passangers
p1 = Passanger.create(name: "Josue", destination: "Guadalajara")

#flights
f1 = Flight.create(airline_name: "Aeromexico", date: "12-12-2020", destination: "Guadalajara")

#tickets
t1 = Ticket.create(passanger_id: p1, flight_id:f1, baggage: "true")
