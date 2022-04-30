class RenameDescriptionFromOffer < ActiveRecord::Migration[6.1]
  def change
    rename_column :offers, :decription, :description
  end
end
