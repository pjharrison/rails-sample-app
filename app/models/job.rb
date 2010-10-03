class Job < ActiveRecord::Base
  belongs_to :user
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ?', search_condition])
  end


 end
