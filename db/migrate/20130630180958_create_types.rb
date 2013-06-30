class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :title
      t.text  :content
      t.integer :user_id
      t.timestamps
    end
  end
end
