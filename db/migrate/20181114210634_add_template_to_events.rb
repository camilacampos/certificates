class AddTemplateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :template, :string
  end
end
