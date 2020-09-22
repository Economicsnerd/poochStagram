class AddPrivateToPooch < ActiveRecord::Migration[6.0]
  def change
    add_column :pooches, :private, :boolean, default: 0
  end
end
