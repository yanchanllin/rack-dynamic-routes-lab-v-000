class Application
  attr_accessor 
 @@items =[]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items"
      resp.write "#{Item.name}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    binding.pry
  if @@items.include?(req.params)
       item.price
  else
    resp.write "Item not found"
    resp.status = 400
  end
  resp.finish
end
end
