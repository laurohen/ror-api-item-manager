class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.boolean :archived
      t.boolean :readed
      t.boolean :executed
      t.integer :status

      t.timestamps
    end
  end
end
