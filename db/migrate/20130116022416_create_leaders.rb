class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.string :name
      t.string :civilization_id
      t.string :notes

      t.timestamps
    end
  end
end
