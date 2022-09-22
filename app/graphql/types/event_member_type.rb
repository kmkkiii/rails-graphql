# frozen_string_literal: true

module Types
  class EventMemberType < Types::BaseObject
    field :id, ID, null: false
    field :event_id, Integer, null: false
    field :member_id, Integer, null: false
    field :presented, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
