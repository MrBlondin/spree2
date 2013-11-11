class AddFinlandToPage < ActiveRecord::Migration
  def change
    add_column :spree_pages, :title_fi, :string
    add_column :spree_pages, :body_fi, :string
    add_column :spree_pages, :meta_keywords_fi, :string
    add_column :spree_pages, :meta_description_fi, :string
    add_column :spree_pages, :meta_title_fi, :string
  end
end
