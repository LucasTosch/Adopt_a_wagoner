class AddPictureToOffer < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :picture, :string
  end
end
