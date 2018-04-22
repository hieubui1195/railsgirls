class AddSubContentToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :sub_content, :string
  end
end
