#encoding: UTF-8
require "net/http"
#uri = URI('http://localhost:3000/top')
#res = Net::HTTP.post_form(uri, 'q' => '10', 'max' => '50')
#puts res.body

#uri = URI('http://localhost:3000/books')
#params = { :limit => 10, :page => 3 }
#uri.query = URI.encode_www_form(params)
#res = Net::HTTP.get_response(uri)
#puts res.body if res.is_a?(Net::HTTPSuccess)


#uri = URI('http://localhost:3000/books')
#res = Net::HTTP.post_form(uri, 'q' => ['ruby', 'perl'], 'max' => '50')
#puts res.body

#********************************************************************************************
#uri = URI('http://localhost:3000/top?q=asdf')
#Net::HTTP.new(uri.host, uri.port) do |http|
  #request = Net::HTTP::Get.new uri
  #response = http.request request # Net::HTTPResponse object
#end
#********************************************************************************************

#uri = URI('http://localhost:3000/top?q=asdf')
#res = Net::HTTP.get_response(uri)
## Headers
#res['Set-Cookie']            # => String
#res.get_fields('set-cookie') # => Array
#res.to_hash['set-cookie']    # => Array
#puts "Headers: #{res.to_hash.inspect}"
  ## Status
  #puts res.code       # => '200'
##puts res.message    # => 'OK'
#puts res.class.name # => 'HTTPOK'
## Body
#puts res.body if res.response_body_permitted?

#def fetch(uri_str, limit = 10)
## You should choose a better exception.
#raise ArgumentError, 'too many HTTP redirects' if limit == 0

#response = Net::HTTP.get_response(URI(uri_str))

#case response
#when Net::HTTPSuccess then
  #response
#when Net::HTTPRedirection then
  #location = response['location']
  #warn "redirected to #{location}"
  #fetch(location, limit - 1)
#else
  #response.value
#end
#end
#puts fetch('http://www.ruby-lang.org')

#uri = URI('http://localhost:3000/top?q=asdf')
#req = Net::HTTP::Post.new(uri)
#req.set_form_data('from' => '2005-01-01', 'to' => '2005-03-31')

#res = Net::HTTP.start(uri.hostname, uri.port) do |http|
  #http.request(req)
#end

#case res
#when Net::HTTPSuccess, Net::HTTPRedirection
  ## OK
#else
  #res.value
#end

#uri = URI('http://localhost:3000/top?q=asdf')
#file = File.stat 'cached_response'
#req = Net::HTTP::Get.new(uri)
#req['If-Modified-Since'] = file.mtime.rfc2822
#res = Net::HTTP.start(uri.hostname, uri.port) {|http|
    #http.request(req)
#}
#open 'cached_response', 'w' do |io|
    #io.write res.body
#end if res.is_a?(Net::HTTPSuccess)

uri = URI('http://localhost:3000/books')
req = Net::HTTP::Get.new(uri)
req.basic_auth 'user', 'pass'
res = Net::HTTP.start(uri.hostname, uri.port) {|http|
    http.request(req)
}
puts res.body






