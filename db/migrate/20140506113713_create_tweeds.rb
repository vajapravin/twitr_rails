class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.integer :creator_id
      t.text :content

      t.timestamps
    end
  end
end
