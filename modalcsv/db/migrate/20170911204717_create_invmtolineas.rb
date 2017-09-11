class CreateInvmtolineas < ActiveRecord::Migration[5.1]
  def change
    create_table :invmtolineas do |t|
      t.integer :codlinea
      t.string :nombre
      t.string :nis
      t.date :feacceso

      t.timestamps
    end
  end
end
