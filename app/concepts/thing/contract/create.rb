module Thing::Contract
  class Create < Reform::Form
    property :name
    property :description

    validates  :name, presence: true
    validates  :description, presence: true, length: { minimum: 10 }
  end
end
