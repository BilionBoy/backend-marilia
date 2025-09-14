class CreateCategoriaProdutos < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria_produtos do |t|
      t.timestamps
    end
  end
end
