class PagesController < ApplicationController
  def the_batch; end

  def the_students
    @students = Student.all
  end

  def the_numbers
  end

  def the_projects
    @projects = Project.where.not(id: 11)
  end

  def quick_note
  end
end
