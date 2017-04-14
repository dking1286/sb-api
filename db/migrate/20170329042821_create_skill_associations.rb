class CreateSkillAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_associations do |t|
      t.references :skill, foreign_key: true
      t.references :regarding, polymorphic: true, index: true

      t.timestamps
    end
  end
end
