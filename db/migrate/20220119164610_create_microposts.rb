class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.text :body, null: false

      t.timestamps
    end
  end
end
