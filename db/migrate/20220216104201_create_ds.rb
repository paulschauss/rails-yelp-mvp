class CreateDs < ActiveRecord::Migration[6.1]
  def change
    create_table :ds do |t|
      t.string :view
      t.integer :rating
      t.string :content

      t.timestamps
    end
  end
end
