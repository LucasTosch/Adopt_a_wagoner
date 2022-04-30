class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :decription
      t.string :skill

      t.timestamps
    end
  end
end
