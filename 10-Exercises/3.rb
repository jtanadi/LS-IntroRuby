given_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odds = given_array.select { |item| item %2 != 0 }
odds_reject = given_array.reject { |item| item.even? }

p odds
p odds_reject
