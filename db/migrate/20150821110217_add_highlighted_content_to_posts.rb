class AddHighlightedContentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :highlighted_content, :text
  end
end
