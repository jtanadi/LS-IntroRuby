contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {
  "Joe Smith" => {},
  "Sally Johnson" => {}
}

contact_names = ["Joe Smith", "Sally Johnson"]

contacts_after = {
  "Joe Smith" => {
    email: "joe@email.com",
    address: "123 Main st.",
    phone: "555-123-4567"
  },
  "Sally Johnson" => {
    email: "sally@email.com",
    address: "404 Not Found Dr.",
    phone: "123-234-3454"
  }
}

i = 0
contacts.each do
  contacts[contact_names[i]] = {
    email: contact_data[i][0],
    address: contact_data[i][1],
    phone: contact_data[i][2]
  }
  i += 1
end

# p contacts
# p contacts_after
raise "This didn't work" unless contacts == contacts_after
