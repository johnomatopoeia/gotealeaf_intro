contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
 
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
 
fields = [:email, :address, :phone]
 
 
contacts.each do |k, h|
 
  name = k.split.first.downcase
 
  contact_data.each do |v|
    if v.first =~ /#{name}/
      fields.each do |field|
        h[field] = v.shift
      end
    else
      puts "No Match"
    end
  end 
end
 
 
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]