class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :pdf_layout, default: 'pdf'
      t.string :pdf_template, default: 'pdf'

      t.timestamps null: false
    end
  end
end
