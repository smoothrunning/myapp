class AddPublicToPage < ActiveRecord::Migration
  def self.up
  	add_column :pages, :public_page ,:boolean
  end

  def self.down
  	remove_column :pages, :public_page
  end
end
