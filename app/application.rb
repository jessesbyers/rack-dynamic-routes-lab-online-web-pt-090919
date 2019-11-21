class Application

 def call(env)
   resp = Rack::Response.new
   req = Rack::Request.new(env)

  #  item_name = req.params["q"]

   if req.path=="/items/#{item}"
     if @@

     resp.write "#{item.price}"
   else
     resp.write "Route not found"
     resp.status = 404
   end

   resp.finish
 end
end
