class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :tagline
      t.boolean :check

      t.timestamps
    end
  end
end
