class Resolvers::CreateTravel < GraphQL::Function
  # arguments passed as "args"
  argument :name, !types.String
  argument :phone, !types.String
  argument :dateFrom, !types.String
  argument :dateTo, !types.String
  argument :origin, !types.String
  argument :destination, !types.String
  argument :numberp, !types.Int

  # return type from the mutation
  type Types::TravelType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    Travel.create!(
      name: args [:name],
      phone: args [:phone],
      dateFrom: args [:dateFrom],
      dateTo: args [:dateTo],
      origin: args [:origin],
      destination: args [:destination],
      numberp: args [:numberp],
    )
  rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("#{e.record.errors.full_messages}")
  end
end
