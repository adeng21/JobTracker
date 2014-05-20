class AddFollowUpDate < ActiveRecord::Migration
  def change
    add_column :jobs, :follow_up_date, :date
  end
end
