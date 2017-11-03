defmodule Mangle do

  def lowercase_and_atomize(orig) when is_nil(orig) do
    nil
  end

  def lowercase_and_atomize(orig) when is_binary(orig) do
    case String.valid?(orig) do 
      true -> do_lowercase_and_atomize(orig)
      false -> orig
    end
  end

  def lowercase_and_atomize(orig) do
    orig
  end

  defp do_lowercase_and_atomize(orig) do
    orig |> String.downcase |> String.to_atom
  end

  def uppercase_and_stringify(orig) when is_nil(orig) do
    orig
  end

  def uppercase_and_stringify(orig) when is_atom(orig) do
    orig |> Atom.to_string |> String.upcase
  end

  def uppercase_and_stringify(orig) when is_bitstring(orig) do
    case String.valid?(orig) do
      true -> String.upcase(orig)
      false -> orig
    end
  end

end
