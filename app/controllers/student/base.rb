class Student::Base < ApplicationController
    layout 'student'
    before_action :authenticate_student!, except:[:about, :top]
end
