defmodule Rocketpay.Name do
  def trim_downcase_name(name) do
    result =
      name
      |> String.trim()
      |> String.downcase()

    {:ok, %{result: result}}
  end
end
