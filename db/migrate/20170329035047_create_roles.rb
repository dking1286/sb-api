class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.references :company, foreign_key: true, index: true
      t.string :name

      t.timestamps
    end
  end
end
