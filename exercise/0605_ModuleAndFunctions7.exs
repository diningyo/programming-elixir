# 6.12 p.070 - exercise ModulesAndFunctions-7
# 3.14 to "3.14"
:io_lib.format("~.2f", [3.14])
# Get environment variable
System.get_env("PWD")
# Get file extension
Path.extname("Times.exs")
# Get current working directory
Process.get()
# JSON string to Elixir data construction.P
Jason.decode!(~s({"age":44,"name":"Steve Irwin","nationality":"Australian"}))
# Run external comman
System.cmd("whoami", [])
