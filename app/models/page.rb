class Page < ActiveRecord::Base
	acts_as_textiled :body
        has_many :subpages, :class_name => 'Page', :foreign_key => 'parent_id'
        belongs_to :parent, :class_name => 'Page', :foreign_key => 'parent_id'

  def self.find_main
    Page.find(:all, :conditions => ["parent_id IS NULL and member_page = ?", true], :order => 'Position')
  end 
  def self.find_admin
    Page.find(:all, :conditions => ["parent_id IS NULL and admin = ?", true], :order => 'Position')
  end 
  def self.find_main_public
    Page.find(:all, :conditions => ["parent_id IS NULL and public_page = ?", true], :order => 'position')
  end

end
