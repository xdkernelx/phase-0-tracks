class Puppy

=begin
  ***Pseudo-code***
  Possible characteristics of Puppy class:
    -breed
    -name
    -owner (id, first_name, last_name)
    -vaccinations {}
    -personal attributes {} (i.e. fur_color, eye_color, id_marks[], rfid, etc

    -accessor methods
      -develop incrementally
      -especially complicated returns (i.e. hash returns)4

    -mutator methods
    -readable output method
    -hash for database entries

    Implementation:
    -develop an initialize method, (.new reverts to this)

=end

  def initialize(breed: "", name: "", owner: {last: "", first: "", id: 0}, \
                vaccinations: {}, an_attr: {fur_color: "vantablack", eye_color: "vantablack", id_marks: [], rfid: ""})
    @breed = breed
    @name = name
    @owner = owner
    @vaccinations = vaccinations
    @an_attr = an_attr  
  end

  #Accessor Methods
  def get_breed
    @breed
  end

  def get_name
    @name
  end

  #returns a deep copy of the contents of @owner
  def get_owner
    {
    :last => @owner[:last],
    :first => @owner[:first],
    :id => @owner[:id]
    }
  end

  def get_vaccinations
    hash = Hash.new
    @vaccinations.each {|key, val|
      hash[key] = val
    }
  end

  def get_attr
    {
      :fur_color => @an_attr[:fur_color],
      :eye_color => @an_attr[:eye_color],
      :id_marks => @an_attr[:id_marks],
      :rfid => @an_attr[:rfid]
    }
  end

  def change_breed(var)
    @breed = var if !var.include?(" ")
  end

end