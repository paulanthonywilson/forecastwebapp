Dynamo.under_test(Forecastwebapp.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Forecastwebapp.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
