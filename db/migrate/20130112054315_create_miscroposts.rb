class CreateMiscroposts < ActiveRecord::Migration
  def change
    create_table :miscroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
