class DefaultController < ApplicationController

  # GET /
  def index

    data = {
              "_links": {
                "blogs": { "href": "/api/v1/blogs" }
              }
            }

    render json: data
  end
end