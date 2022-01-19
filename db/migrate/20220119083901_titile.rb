class Titile < ActiveRecord::Migration[6.1]
  def change
  rename_column :posts, :titile, :title
  end
end
