if ENV["REDISCLOUD_URL"]
    uri = URI.parse(ENV["REDISCLOUD_URL"])
    p uri
    $redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
  throw "REDISCLOUD_URL not found in the environment"
end


