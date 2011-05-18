class CreateForums < ActiveRecord::Migration
  def up
    create_table :forem_forums do |t|
      t.string :title
      t.text :description
    end

  end

  def down
    drop_table :forums
  end
end
