class AddColumnMarkupBodyToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :markup_body, :text
  end
end
