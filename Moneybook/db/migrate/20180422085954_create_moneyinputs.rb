class CreateMoneyinputs < ActiveRecord::Migration[5.1]
  def change
    create_table :moneyinputs do |t|
      t.string :date
      t.string :style
      t.string :category
      t.text :content
      t.integer :price
      
      t.timestamps
    end
  end
end
