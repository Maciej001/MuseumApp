class AddNameToArtist < ActiveRecord::Migration
  def change
  	add_column :artists, :name, :string
  	add_column :artists, :born, :integer
  	add_column :artists, :died, :integer
  end
end
