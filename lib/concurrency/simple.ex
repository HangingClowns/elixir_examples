defmodule ElixirExamples.Concurrency.Simple do
  def hello_worker do
    receive do
      {pid, name} ->
        send(pid, "Hello, #{name}")
    end
  end

  def queue_hello(pid, name) do
    send(pid, {self(), name})
    receive do
      greeting ->
        IO.puts(greeting)
    end
  end
end