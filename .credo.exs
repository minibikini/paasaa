%{
  configs: [
    %{
      name: "default",
      plugins: [{ExSlop, []}],
      checks: [
        {Credo.Check.Design.AliasUsage, false},
        {ExSlop.Check.Readability.NarratorDoc, false},
        # Catches length(list) == 0 (traverses entire list) → use list == [] or Enum.empty?/1
        {Credo.Check.Warning.ExpensiveEmptyEnumCheck, []},

        # Catches acc ++ [item] (O(n²) append) → use [item | acc] then Enum.reverse
        {Credo.Check.Refactor.AppendSingleItem, []},

        # Catches !!var (double negation) — LLMs use this to "cast to boolean"
        {Credo.Check.Refactor.DoubleBooleanNegation, []},

        # Catches case x do true -> a; false -> b end → if/else
        {Credo.Check.Refactor.CondStatements, []},

        # Catches Enum.map |> Enum.map → single Enum.map
        {Credo.Check.Refactor.MapMap, []},

        # Catches Enum.filter |> Enum.filter → single Enum.filter
        {Credo.Check.Refactor.FilterFilter, []},

        # Catches Enum.reject |> Enum.reject → single Enum.reject
        {Credo.Check.Refactor.RejectReject, []},

        # Catches Enum.count(enum) > 0 → Enum.any?/1
        {Credo.Check.Refactor.FilterCount, []},

        # Catches negated conditions in unless → rewrite with positive condition
        {Credo.Check.Refactor.NegatedConditionsInUnless, []},

        # Catches unless x do .. else .. end → if/else (clearer)
        {Credo.Check.Refactor.UnlessWithElse, []}
      ]
    }
  ]
}
