class Employee < ApplicationRecord

# specify schema and table name
  self.table_name = "AXEL.employees"

  # specify primary key name
  self.primary_key = "employee_id"

  # specify sequence name
  #self.sequence_name = "hr.hr_employee_s"

  # set which DATE columns should be converted to Ruby Date using ActiveRecord Attribute API
  # Starting from Oracle enhanced adapter 1.7 Oracle `DATE` columns are mapped to Ruby `Date` by default.
  attribute :hired_on, :date
  attribute :birth_date_on, :date

  # set which DATE columns should be converted to Ruby Time using ActiveRecord Attribute API
  #attribute :last_login_time, :datetime

  # set which VARCHAR2 columns should be converted to true and false using ActiveRecord Attribute API
  #attribute :manager, :boolean
  #attribute :active, :boolean

  # set which columns should be ignored in ActiveRecord
  #ignore_table_columns :attribute1, :attribute2
end
