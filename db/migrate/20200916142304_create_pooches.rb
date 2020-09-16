class CreatePooches < ActiveRecord::Migration[6.0]
  def change
    create_table :pooches do |t|
      t.string :name
      t.string :caption
      t.integer :likes

      t.timestamps
    end
  end
end
