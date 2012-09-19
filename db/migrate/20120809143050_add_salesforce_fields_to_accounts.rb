class AddSalesforceFieldsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :salesforce_id, :string, :limit => 18
    add_column :accounts, :salesforce_updated_at, :datetime

    add_index :accounts, :salesforce_id, :unique => true
  end
end
