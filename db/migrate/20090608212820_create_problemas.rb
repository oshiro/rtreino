class CreateProblemas < ActiveRecord::Migration
  def self.up
    create_table :problemas do |t|
      t.integer :id_no_pku
      t.string :nome
      t.string :link
      t.integer :categorias_old
      t.integer :origem_old

      t.timestamps
    end
  end

  def self.down
    drop_table :problemas
  end
end
