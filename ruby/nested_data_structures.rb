require 'date'

person = {
  name: {
    first_name: "John",
    middle_abbr: "S.",
    last_name: "Smith",
  },
  socioeconomic_class: "CEO",
  personal_attr: {
    hair: "brown",
    eyes: "brown",
    height: 182.9, #In cm
    weight: 70.3, #In Kg
    sex: :male,
  },
  access_true: {
    sensitive_info: {
      id: "A2749238",
      dob: Date.new(1967, 3, 2, 0),
      rt_loc: "525 Market St, San Francisco, CA",
      address: "633 Folsom St, San Francisco, CA",
    },
    special: [
        :cia, 
        :resourceful, 
        :adaptability, 
        :loyalty, 
        :close_combat, 
        :war_exp]
  },
  access_false: "RED ALERT!"
}

priority_ppl = [:CEO, :POTUS, :KINGPIN, :GOV_AGENTS, :AHFFW]
vip_header = "****" * 4 + "VIP" + "****" * 4
access = :access_true

puts("\n", vip_header.center(60), "\n") if priority_ppl.include?(person[:socioeconomic_class].to_sym)
puts("This person's name is: \
  #{person[:name][:first_name]} \
  #{person[:name][:middle_abbr] if person[:name][:middle_abbr] != ""} \
  #{person[:name][:last_name]}\n\n".squeeze(" "))
puts("Person's attributes: \n#{person[:personal_attr]}\n\n")
puts("Person's sensitive data: \n#{person[access][:sensitive_info]}\n\n")
puts("Person's special talents: ") #\n#{person[access][:special][0..2].to_s}\n\n
3.times  {|var|
  puts(person[access][:special][var].to_s.rjust(25))
}

puts("\n", vip_header.center(60)) if priority_ppl.include?(person[:socioeconomic_class].to_sym)