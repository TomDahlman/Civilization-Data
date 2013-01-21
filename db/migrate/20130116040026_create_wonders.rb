class CreateWonders < ActiveRecord::Migration
  def change
    create_table :wonders do |t|
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
