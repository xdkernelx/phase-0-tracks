class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

a = Puppy.new(:breed => "Husky", \
              :name => "Sparky", \
              :owner => {last: "Alvarez", first: "Nestor", id: 201}, \
              :vaccinations => {:flu => true, :smallpox => true}, \
              :an_attr => {
                  :fur_color => "brown", :eye_color => "blue", \
                  :id_marks => ["lower-left scar", "left-eye spot"],
                  :rfid => 2304
                }
              )

p a