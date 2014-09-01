module Geocms
  module Core
  end
end

require "carrierwave"
require "acts_as_tenant"
require "friendly_id"
require "ancestry"
require "acts_as_list"
require "kaminari"
require "rgeo"
# require "tire"
require "rolify"

require "sorcery"
require "cancancan"

require 'geocms/core/version'
require 'geocms/core/engine'
require 'geocms/core/routes'
require 'geocms/preferences'

require 'geocms/permitted_attributes'
require 'geocms/core/controller_helpers/strong_parameters'
