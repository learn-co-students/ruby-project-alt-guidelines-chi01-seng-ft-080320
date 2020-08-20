require_relative '../config/environment'
def clear
    puts `clear`
end


passengers = Passenger.all

puts 'Hello, please login.'
passenger_name = gets.chomp
passenger = Passenger.find_by_passenger_name(passenger_name)
while true 

clear

puts "Hello there #{passenger.name} how may I help you today?"

puts "1. Check my flight information"
puts "2. Book a Flight"
puts "3. Browse Available flights"
puts "4. Change my flight"
puts "5. Cancel my flight"
puts "6. Exit program"

print "Enter your selection: "
input = gets.chomp 

clear

case input 
when "1"
    puts "Here is your flight information"
    puts "\n"
     passenger.flights.each do |flight|
        puts "Destination: #{flight.destination}"
        puts "Airline: #{flight.airline_name}"
        puts "Departure date: #{flight.date}"
        puts "\n"
    end 
    puts "press enter to return"
    gets.chomp
when "2"
    puts "Booking a flight"
    puts "What Airline?: "
        airline = gets.chomp 
    puts "Where do you want to fly to?: "
        destination = gets.chomp 
    puts "What day do you want to fly?: "
        date = gets.chomp 
    puts "Do you have luggage?: y or n "
        luggage = gets.chomp
        if luggage == "y"
            luggage = true
        else 
            luggage = false   
        end 

    created_flight = Flight.create(airline_name: airline, date: date, destination: destination)
    
    Ticket.create(passenger_id: passenger.id, flight_id: created_flight.id, baggage: luggage)

    puts "press enter to return"
    gets.chomp

when "3" 
    puts "Available flights"
    Flight.all.each do |flights|
    puts "These are our available flights: #{flights.destination}" 
    puts "this is how full it is:  #{flights.passengers.count} passengers"    
    end
    puts "press enter to return"
    gets.chomp
when "4"
    puts "Change my flight"
######### work here 
    puts "press enter to return"
    gets.chomp

when "5"
    puts "Cancel my flight"
    puts "\n"

        passenger.flights.each_with_index do |flight, index|
        puts "#{index + 1}. Destination: #{flight.destination} | Airline: #{flight.airline_name} | Departure date: #{flight.date}"
        puts "\n"
        end 
        puts "Which flight would you like to cancel?"
        flight_index = gets.chomp 

        selected_flight = passenger.flights[flight_index.to_i - 1]

        selected_flight.destroy
        
        puts "You have Canceled your flight."

    puts "press enter to return"
    gets.chomp

    when "6" #exit program 
        break
end 
end 


