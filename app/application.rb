class Application

 @@items =[]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  binding.pry
    if req.path.include?"/items"

    else
      resp.write "Route not found"
      resp.status = 404
    end
  if @@items.include?(req.path)
       item.price
  else
    resp.write "Item not found"
    resp.status = 400
  end
  resp.finish
end
end
