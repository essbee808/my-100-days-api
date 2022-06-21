class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :gratitude
      t.string :overall_goal
      t.text :highlights
      t.text :struggles
      t.text :solutions
      t.text :final_thoughts
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
