module Geocms
  module Api
    module V1
      class BaseController < ActionController::Base
        respond_to :json
        # Disable for all serializers (except ArraySerializer)
        # ActiveModel::Serializer.root = true
        set_current_tenant_by_subdomain(Geocms::Account, :subdomain)
        serialization_scope :current_tenant

        private
        def current_ability
          @current_ability ||= Geocms::Ability.new(current_user, current_tenant)
        end
      end
    end
  end
end