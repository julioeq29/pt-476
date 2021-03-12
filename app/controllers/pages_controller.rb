class PagesController < ApplicationController
  def the_batch; end

  def the_students
    @students = Student.all
  end

  def the_numbers
  end

  def the_projects
  end

  def quick_note
  end
end
