class CreateBlogdb < ActiveRecord::Migration[7.0]
  def change
    create_table :blogdbs do |t|
      t.string :author
      t.string :title
      t.string :category
      t.string :content
      t.string :imagelink 
      t.timestamps
    end
  end
end
