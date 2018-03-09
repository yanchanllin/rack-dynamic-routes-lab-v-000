class Application
  
  @@items =[]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.include?"/items"
      i=req.path.split('/').last
      item = @@items.find {|item| item.name == i}
      binding.pry
      resp.write item.price
      if @@items.include?(req.path)
        item.price
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
  end
  resp.finish
end
end
