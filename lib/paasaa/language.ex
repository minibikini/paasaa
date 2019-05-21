defmodule Paasaa.Language do
  @type t :: %{
          required(:name) => String.t(),
          required(:type) => String.t(),
          required(:scope) => String.t(),
          required(:iso6393) => String.t(),
          required(:iso6392B) => String.t(),
          required(:iso6392T) => String.t(),
          required(:iso6391) => String.t()
        }

  defstruct [:name, :type, :scope, :iso6393, :iso6392B, :iso6392T, :iso6391]
end
