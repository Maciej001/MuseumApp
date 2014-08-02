class AddTitleToPaintings < ActiveRecord::Migration
  def change

  	add_column :paintings, :name, :string
  	add_column :paintings, :year, :integer
    add_column :paintings, :image_url, :string
  end
end
