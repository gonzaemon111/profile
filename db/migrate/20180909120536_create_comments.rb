class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name, index: true
      t.string :comment, index: true, null: false
      t.references :article, index: true, null: false

      t.timestamps
    end
  end
end
