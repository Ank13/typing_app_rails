class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.text  :content
      t.ingeger :user_id
      t.timestamps
    end
  end
end
