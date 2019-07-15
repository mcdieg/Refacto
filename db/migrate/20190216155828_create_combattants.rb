class CreateCombattants < ActiveRecord::Migration[5.1]
  def change
    create_table :combattants do |t|
      t.string :nom
      t.integer :points_de_vie
      t.integer :points_d_attaque

      t.timestamps
    end
  end
end
