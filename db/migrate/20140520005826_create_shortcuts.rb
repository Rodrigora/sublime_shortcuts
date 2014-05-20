class CreateShortcuts < ActiveRecord::Migration
  def change
    create_table :shortcuts do |t|
      t.string :title
      t.string :key

      t.timestamps
    end
  end
end
