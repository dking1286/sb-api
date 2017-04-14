class ApiVersion
  def initialize(version, default = false)
    @version, @default = version, default
  end

  # Called from routes.rb to verify the API version
  def matches?(request)
    @default || check_headers(request.headers)
  end

  private
  def check_headers(headers)
    accept = headers['Accept']
    accept && accept.include?("application/vnd.careeer.v#{@version}+json")
  end
end
