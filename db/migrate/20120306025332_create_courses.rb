class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :code
      t.integer :recommended_mark
      t.string :title
      t.text :prerequisites

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
