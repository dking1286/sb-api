class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :type
      t.string :name
      t.string :param
      t.string :url

      t.timestamps
    end
  end
end
