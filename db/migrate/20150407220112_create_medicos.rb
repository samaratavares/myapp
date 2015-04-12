class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :crm

      t.timestamps null: false
    end
  end
end
