# ExPipe

Pipe stuff from the shell into Elixir and back!

## Installation

Run `mix escript.build` and put `ex_pipe` in you $PATH.

## Usage

`ex_pipe command`
pipes `stdin` into the elixir command
outputs strings as-is, everything else using `IO.inspect`

```
cat my_file | ex_pipe "byte_size |> Kernel./(1024)" > /tmp/file_size
```
