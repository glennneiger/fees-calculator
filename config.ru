use Rack::Static, 
  :urls => ["/css", "/js", "/images"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=no-cache'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
