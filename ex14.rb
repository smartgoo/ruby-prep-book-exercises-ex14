contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_data = [["Joe@email.com", "123 Main St", "555-123-4567"],
                ["sally@email.com", "404 Not Found", "123-234-3454"]]
fields = ["email", "address", "phone"]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

puts contacts
