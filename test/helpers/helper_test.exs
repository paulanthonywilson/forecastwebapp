defmodule HelpersTest do
  use ExUnit.Case
  import Forecastwebapp.Helpers

  test "format_date_time" do
    assert format_date_time({{2012, 3, 5}, {13,14,15}}) == "2012-03-05 13:14:15"
  end
end
