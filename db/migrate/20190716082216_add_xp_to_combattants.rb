class AddXpToCombattants < ActiveRecord::Migration[5.1]
  def change
    add_column :combattants, :xp, :integer
  end
end
