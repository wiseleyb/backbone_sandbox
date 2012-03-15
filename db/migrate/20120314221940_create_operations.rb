class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :title

      t.timestamps
    end
  end
end
