class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    self.send("name=", student_hash[:name])
    # @name = student hash of [:name]
    self.send("location=", student_hash[:location])
    # same as bove, but with location
    self.send("profile_url=", student_hash[:profile_url])

    @@all << self
  end

  def self.create_from_collection(students_array)
      students_array.each do |student_hash|
        # each student is a hash and it is iterrating over the student hash
        Student.new(student_hash)
      end


  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
