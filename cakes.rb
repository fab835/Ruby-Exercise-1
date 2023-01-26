def cakes(receiepe, ingredients)
    if receiepe.class == Hash && ingredients.class == Hash # Validate correct inputs
        # total of cakes we can make is the minimun of ingredients present
        @total = -1

        receiepe.keys.each do |i|
            if ingredients[i] != nil 
                if ingredients[i].class == Integer && receiepe[i].class == Integer # Validate unit of ingredients
                    individual_ingredients = ingredients[i] / receiepe[i]
                    @total = @total == -1 || individual_ingredients < @total ? individual_ingredients : @total 
                else
                    raise 'This function only accept integer in values of keys'
                end
            else # finded nissing ingredients
                return 0
            end 
        end

        return @total
    else
        raise 'invalid inputs type'
    end
end

@cake1 = cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})
@cake2 = cakes({flour: 300, sugar: 150, milk: 100, oil: 100, apples: 3}, {sugar: 500, flour: 2000, milk: 2000})

puts "cake 1 #{@cake1}"
puts "cake 2 #{@cake2}"



