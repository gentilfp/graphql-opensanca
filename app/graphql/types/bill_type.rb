module Types
  class BillType < Types::BaseObject
    description: 'Description of a Bill'

    field :status, String, "Open or closed", null: false
    field :people_number, Int, "Number of people at the table", null: false
    field :total, Int, "Bill value", null: false
  end
end
