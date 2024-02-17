mutable struct Store
	stock::Dict
	prices::Dict
	funds::Float64
end
	
stock = Dict{String, Int}("milk" => 10, "eggs" => 20, "cheese" => 35, "bread" => 20, "chocolate" => 22, "flour" => 15, "tomatoes" => 15)

prices = Dict{String, Float64}("milk" => 1, "eggs" => 2, "cheese" => 3.5, "bread" => 0.9, "chocolate" => 2.2, "flour" => 0.5, "tomatoes" => 1.5)

store = Store(stock, prices, 100)

println("milk stock", " ", store.stock["milk"])

println("tomatoes price", " ", store.prices["tomatoes"])

sum_cheese_chocolate_flour = store.prices["cheese"] + store.prices["chocolate"] + store.prices["flour"]
println("money spent in cheese, chocolate and flour", " ", sum_cheese_chocolate_flour)