class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.text :description

      t.timestamps
    end
  end
end
