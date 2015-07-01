class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.datetime :datetime
      t.belongs_to :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
