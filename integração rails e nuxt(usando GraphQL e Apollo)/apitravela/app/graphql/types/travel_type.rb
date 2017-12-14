# defines a new GraphQL type
Types::TravelType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Travel'

  # it has the following fields
  field :name, !types.String
  field :phone, !types.String
  field :dateFrom, !types.Date
  field :dateTo, !types.Date
  field :origin, !types.String
  field :destination, !types.String
  field :numberp, !types.Int
end
