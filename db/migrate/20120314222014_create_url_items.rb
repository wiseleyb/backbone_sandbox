class CreateUrlItems < ActiveRecord::Migration
  def change
    create_table :url_items do |t|
      t.string :title
      t.integer :operation_id

      t.timestamps
    end
  end
end
