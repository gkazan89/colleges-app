class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :city
      t.string :mascot

      t.timestamps
    end
  end
end