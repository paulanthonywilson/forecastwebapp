defmodule Forecastwebapp.Helpers do
  def format_date_time({{year, month, day}, {hour, minute, second}}) do
    :io_lib.format("~4..0B-~2..0B-~2..0B ~2..0B:~2..0B:~2..0B",
     [year, month, day, hour, minute, second])
     |> List.flatten
     |> to_string
  end

end
