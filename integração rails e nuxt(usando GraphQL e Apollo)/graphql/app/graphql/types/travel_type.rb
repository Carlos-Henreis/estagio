# defines a new GraphQL type
Types::TravelType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Travel'

  # it has the following fields
  field :name, !types.String
  field :phone, !types.String
  field :dateFrom, !types.String
  field :dateTo, !types.String
  field :origin, !types.String
  field :destination, !types.String
  field :numberp, !types.Int
end
