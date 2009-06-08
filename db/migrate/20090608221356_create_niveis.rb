class CreateNiveis < ActiveRecord::Migration
  def self.up
    create_table :niveis do |t|
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :niveis
  end
end
