defmodule Rocketpay.NumbersTest do
  use ExUnit.Case, async: true

  alias Rocketpay.Numbers
  alias Rocketpay.Name

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when there is no file with the given name, returns an error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end

  describe "trim_downcase_name/1" do
    test "when there is a param, returns the param in small letters and remove the blanks" do
      response = Name.trim_downcase_name(" UeMeRsOn ")

      expected_response = {:ok, %{result: "uemerson"}}

      assert response == expected_response
    end
  end
end
