require 'dredd_hooks/methods'

include DreddHooks::Methods

before_each_validation do |transaction|
  headers_to_ignore = %w(etag cache-control x-request-id x-runtime connection transfer-encoding)

  if transaction.key?("real") && transaction["real"].key?("headers")
    headers_to_ignore.each do |k|
      transaction["real"]["headers"].delete(k)
    end

    if transaction["real"]["headers"]["content-type"] == "application/hal+json; charset=utf-8"
      transaction["real"]["headers"]["content-type"] = "application/hal+json"
    end

    if transaction["real"]["headers"]["content-type"] == "application/json; charset=utf-8"
      transaction["real"]["headers"]["content-type"] = "application/json"
    end
  end
end
