class AddSubmenuToPages < ActiveRecord::Migration
  def change
    add_column :spree_pages, :submenu, :string
  end
end
