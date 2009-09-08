class AddMemberToPage < ActiveRecord::Migration
  def self.up
  	add_column :pages, :member_page ,:boolean
  end

  def self.down
  	remove_column :pages, :member_page
  end
end
