class HarryPotter::Students

  attr_accessor :student_1, :name, :gender, :house

  def self.all
    student_1 = self.new
    student_1.name = "Harry Potter"
    student_1.gender = "male"
    student_1.house = "Gryffindor"

    puts student_1
  end
end
