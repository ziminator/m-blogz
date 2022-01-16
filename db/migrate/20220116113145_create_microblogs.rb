class CreateMicroblogs < ActiveRecord::Migration[6.1]
  def change
    create_table :microblogs do |t|
      t.text :body

      t.timestamps
    end
  end
end
