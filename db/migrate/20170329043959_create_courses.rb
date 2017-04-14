class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :url
      t.references :company, foreign_key: true, index: true
      t.decimal :cost, precision: 10, scale: 2, default: 0

      t.timestamps
    end
  end
end
