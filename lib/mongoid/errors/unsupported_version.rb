# encoding: utf-8
module Mongoid
  module Errors

    # Raised when the database version is not supported by Mongoid.
    #
    # @example Create the error.
    #   UnsupportedVersion.new(Mongo::ServerVersion.new("1.3.1"))
    class UnsupportedVersion < MongoidError
      def initialize(version)
        super(
          compose_message(
            "unsupported_version",
            { version: version, mongo_version: Mongoid::MONGODB_VERSION }
          )
        )
      end
    end
  end
end
