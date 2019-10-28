class Application

@@items = []

def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
        price = @@items.each{|x|x.price}
        resp.write price
    else
        resp.write "Item not found"
        resp.status == 400
    elsif
        req.path.match(/testing/)
        resp.write "Route not found"
        resp.status = 404
    end
    resp.finish
end

end