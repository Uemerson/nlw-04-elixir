defmodule RocketpayWeb.NameController do
  use RocketpayWeb, :controller

  alias Rocketpay.Name

  def index(conn, _params) do
    " UeMeRsOn "
    |> Name.trim_downcase_name()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{
      message: "Welcome #{result}. Your name is in small letters and the blanks are removed"
    })
  end
end
