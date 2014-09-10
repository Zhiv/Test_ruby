class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
 
      # эта строчка добавит числовой столбец с именем `article_id`.
      t.references :article, index: true
 
      t.timestamps
    end
 
  end
end