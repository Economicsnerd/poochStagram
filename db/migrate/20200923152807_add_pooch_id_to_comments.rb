class AddPoochIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :pooch_id, :integer
  end
end
