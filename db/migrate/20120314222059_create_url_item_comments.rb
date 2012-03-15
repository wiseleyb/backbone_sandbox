class CreateUrlItemComments < ActiveRecord::Migration
  def change
    create_table :url_item_comments do |t|
      t.string :comment
      t.integer :url_item_id

      t.timestamps
    end
  end
end
