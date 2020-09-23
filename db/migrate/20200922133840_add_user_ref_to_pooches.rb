class AddUserRefToPooches < ActiveRecord::Migration[6.0]
  def change
    add_reference :pooches, :user, null: false, foreign_key: true
  end
end
