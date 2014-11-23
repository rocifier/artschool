class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string :name
      t.text :ajax_content

      t.timestamps
    end
  end
end
