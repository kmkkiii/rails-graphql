module Mutations
  class CreateEvent < BaseMutation
    field :event, Types::EventType, null: false

    argument :title, String, required: true
    argument :start_at, GraphQL::Types::ISO8601DateTime, required: true
    argument :end_at, GraphQL::Types::ISO8601DateTime, required: false
    argument :place, String, required: false
    argument :tags, String, required: false
    argument :memo, String, required: false

    def resolve(**args)
      { event: Event.create!(**args) }
    end
  end
end
