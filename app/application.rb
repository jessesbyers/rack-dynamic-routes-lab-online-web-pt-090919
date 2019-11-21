class Application

 def call(env)
   resp = Rack::Response.new
   req = Rack::Request.new(env)

   item_name = req.params["q"]

   if req.path=="/items/q"
     if @@item.include?(q)
       resp.write "#{q.price}"
     else
       resp.write "Item not found"
       resp.status = 400

     end
   else
     resp.write "Route not found"
     resp.status = 404
   end

   resp.finish
 end
end
