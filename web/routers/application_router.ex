defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
    # conn = conn.assign(:title, "Data from the Met Office")
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:sites, [])
    render conn, "index.html"
  end


  get "/nearest" do
    {latitude, _} = Float.parse(conn.params[:latitude])
    {longitude, _} = Float.parse(conn.params[:longitude])
    {count, _} = Integer.parse(conn.params[:count])

    case Forecast.nearest_sites({latitude, longitude}, count) do
      {:ok, sites} -> conn = conn.assign(:sites, sites)
    end

    render conn, "index.html"

  end
end
