class HomeController < ApplicationController
  ZENN_USER_NAME = "knot"
  CONNPASS_USER_NAME = "knot"
  GITHUB_USER_NAME = "618knot"

  def index
  end

  def call_api(url)
    http_client = HTTPClient.new
    response = http_client.get(url)
    return response.body
  end

  def zenn_api
    url = "https://zenn.dev/api/articles?username=#{ZENN_USER_NAME}&order=latest"
    response = call_api(url)
    render json: JSON.parse(response)
  end

  def connpass_api
    url = "https://connpass.com/api/v1/event/?nickname=#{CONNPASS_USER_NAME}"
    response = call_api(url)
    render json: JSON.parse(response)
  end

  def  github_api
    url = "https://api.github.com/users/#{GITHUB_USER_NAME}/repos"
    response = call_api(url)
    render json: JSON.parse(response)
  end
end
