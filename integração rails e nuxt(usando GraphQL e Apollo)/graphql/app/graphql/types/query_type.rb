Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allTravels, !types[Types::TravelType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Travel.all }
  end
end
