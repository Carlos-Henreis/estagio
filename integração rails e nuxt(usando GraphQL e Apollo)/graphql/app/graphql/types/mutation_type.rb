Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createTravel, function: Resolvers::CreateTravel.new
end
