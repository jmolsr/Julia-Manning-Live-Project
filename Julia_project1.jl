# Creating a Structure including Dicts
mutable struct Store
	stock::Dict
	prices::Dict
	funds::Float64
end

# Creating a Dict to store products and stocks	
stock = Dict{String, Int}("milk" => 10, "eggs" => 20, "cheese" => 35, "bread" => 20, "chocolate" => 22, "flour" => 15, "tomatoes" => 15)

# Creating a Dict to store products and prices
prices = Dict{String, Float64}("milk" => 1, "eggs" => 2, "cheese" => 3.5, "bread" => 0.9, "chocolate" => 2.2, "flour" => 0.5, "tomatoes" => 1.5)

# Creating a variable to store an instance of the previos structure.
store = Store(stock, prices, 100)

# Accesing the structure to print the "milk" stock.
println("milk stock", " ", store.stock["milk"])

# Accesing the structure to print the tomatoes price.
println("tomatoes price", " ", store.prices["tomatoes"])

# Creating a variable to sum prices of products and printing the result.
sum_cheese_chocolate_flour = store.prices["cheese"] + store.prices["chocolate"] + store.prices["flour"]
println("money spent in cheese, chocolate and flour", " ", sum_cheese_chocolate_flour)