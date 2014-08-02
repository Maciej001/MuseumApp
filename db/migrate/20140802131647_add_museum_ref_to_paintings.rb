class AddMuseumRefToPaintings < ActiveRecord::Migration
  def change
    add_reference :paintings, :museum, index: true
    add_reference :paintings, :artist, index: true
  end
end
