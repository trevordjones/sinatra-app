Sequel.migration do
  up do
    create_table(:test_frameworks) do
      primary_key :id
      String :description, null: false
    end
  end

  down do
    drop_table(:test_frameworks)
  end
end
