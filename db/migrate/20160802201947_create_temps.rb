class CreateTemps < ActiveRecord::Migration
  def change
    create_table :temps do |t|

      t.timestamps null: false
    end
  end
end
