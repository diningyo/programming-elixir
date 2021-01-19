cast = %{
  buttercup: %{
    actor:     {"Rogin", "Wright"},
    role:      "princess"
  },
  westley: %{
    actor:     {"Carey", "Ewes"},
    role:      "farm boy",
  }
}

IO.inspect get_in(cast, [Access.key(:westley), :actor, Access.elem(1)])
IO.inspect get_and_update_in(cast,[Access.key(:buttercup), :role],
  fn (val) -> {val, "Queen"} end)
