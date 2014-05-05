class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position, null: false
      t.string :company, null: false
      t.string :location
      t.text :job_description
      t.string :job_posting_url
      t.date :application_date
      t.string :application_email
      t.string :application_contact
      t.string :status, null: false
      t.integer :interest_level

      t.timestamps
    end
  end
end
