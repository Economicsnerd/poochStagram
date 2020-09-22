class AddPublishedToPooch < ActiveRecord::Migration[6.0]
  def change
    add_column :pooches, :published, :boolean, default: 0
  end
end
