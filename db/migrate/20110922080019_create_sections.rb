class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.references :page
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "content_type"
      t.text "content"
      t.timestamps
    end
    add_index("sections", "page_id")
  end

  def self.down
    drop_table :sections
  end
end
