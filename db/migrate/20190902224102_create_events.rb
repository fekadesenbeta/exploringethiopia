class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :date
      t.integer :time
      t.text :description
      t.text :location
      t.references :user, foreign_key: true
      

      t.timestamps
    end
  end
end
