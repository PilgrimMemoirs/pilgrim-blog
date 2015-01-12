class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.references :user
      t.references :post

      t.timestamps null: false
    end
  end
end
