class CreateCivilizations < ActiveRecord::Migration
  def change
    create_table :civilizations do |t|
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
