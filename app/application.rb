class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items"
      resp.write "#{Item.name}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
  if @@item.include?(item)
       item.price
  else
    resp.write "Item not found"
    resp.status = 400
  end
  resp.finish
end
end
