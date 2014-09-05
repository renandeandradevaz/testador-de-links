class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :conteudo_esperado

      t.timestamps
    end
  end
end
