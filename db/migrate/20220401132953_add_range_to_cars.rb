class AddRangeToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :range, :json, default: { unit: '', distance: ''}
  end
end
