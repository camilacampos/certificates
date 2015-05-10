class AddSlugToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :slug, :string
    add_index :participants, :slug, unique: true
  end
end
