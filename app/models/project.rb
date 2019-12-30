class Project < ApplicationRecord
  has_many :tasks
end

=begin
      project_title: string
      project_desc: string
      project_status: boolean 
=end
