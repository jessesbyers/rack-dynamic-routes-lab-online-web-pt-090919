require 'pry'

class Application

 def call(env)
   resp = Rack::Response.new
   req = Rack::Request.new(env)

   if req.path=="/items/"
     item_name = req.path.split("/items/").last
     if Item.all.include?(item_name)
       resp.write "#{item_name.price}"
     else
       resp.write "Item not found"
       resp.status = 400

     end
   else
     resp.write "Route not found"
     resp.status = 404
     binding.pry
   end

   resp.finish
 end
end
