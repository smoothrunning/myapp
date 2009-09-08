class AddNavColorPage < ActiveRecord::Migration
  def self.up
  	add_column :pages, :navcolor ,:string
  end

  def self.down
  	remove_column :pages, :navcolor
  end
end
