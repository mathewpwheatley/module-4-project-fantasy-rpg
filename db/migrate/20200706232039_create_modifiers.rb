class CreateModifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :modifiers do |t|
      t.integer :health_effect, null: false, default: 0
      t.integer :healing_effect, null: false, default: 0
      t.integer :damage_effect, null: false, default: 0
      t.integer :cooldown_effect, null: false, default: 0
      t.belongs_to :game_save, null: false, foreign_key: {on_delete: :cascade}
    end
  end
end
