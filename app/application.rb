require 'pry'

class Application

 def call(env)
   resp = Rack::Response.new
   req = Rack::Request.new(env)
   item_name = req.path.split("/items/").last

   if req.path=="/items/#{item_name}"

     @@items.each do |item|
       if item_name
         resp.write "#{item.price}"
         resp.status = 200
       else
         resp.write "Item not found"
         resp.status = 400
       end
     end

   else
     resp.write "Route not found"
     resp.status = 404
   end

   resp.finish
 end
end
