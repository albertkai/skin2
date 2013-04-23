class AddPartNumberToPrint < ActiveRecord::Migration
  def change
    add_column :prints, :primary_color, :string
    add_column :prints, :secondary_color, :string
  end
end
