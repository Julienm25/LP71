class CreateProduits < ActiveRecord::Migration[5.0]
  def change
    create_table :produits do |t|
      t.string :Nom
      t.string :Description
      t.float :Prix
      t.string :Image

      t.timestamps
    end
  end
end
