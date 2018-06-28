require 'pry'
require 'project.rb'

class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects=[]
  end

  def back_project (project)
    @backed_projects << project

    project.add_backer(self)
  end



  #Backer - More Advanced #back_project
  #also adds the backer to the project's backers array
end
