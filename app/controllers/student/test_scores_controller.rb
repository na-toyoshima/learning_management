class Student::TestScoresController < Student::Base
  def new
    @test_score = TestScore.new
  end

  def create
    
  end
end
