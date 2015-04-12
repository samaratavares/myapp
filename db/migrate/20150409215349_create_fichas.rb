class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.references :paciente, index: true
      t.references :medico, index: true
      t.string :altura
      t.string :imc
      t.string :classificacao
      t.string :riscos
      t.string :circunferencia
      t.string :pressao
      t.string :glicose
      t.string :batimentos
      t.string :dieta
      t.string :medicamentos

      t.timestamps null: false
    end
    add_foreign_key :fichas, :pacientes
    add_foreign_key :fichas, :medicos
  end
end
