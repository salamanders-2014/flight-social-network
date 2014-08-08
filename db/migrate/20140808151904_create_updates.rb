class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text :text
      t.belongs_to :post

      t.timestamps
    end
  end
end
