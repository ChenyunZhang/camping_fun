class AddColumnTimeToRegistration < ActiveRecord::Migration[6.0]
  def change
    add_column :registrations, :time, :integer
  end
end
