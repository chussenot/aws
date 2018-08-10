require "xml"

module Aws::S3::Response
  class GetObjectOutput
    # The body of the request object
    getter body

    # Create a `GetObjectOutput` response from an
    # `HTTP::Client::Response` object
    def self.from_response(response)
      new(response.body)
    end

    def initialize(@body : IO | String)
    end

    def_equals @body
  end
end
