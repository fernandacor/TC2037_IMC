# Fernanda Cantú y Alina Rosas
# Programacion Funcional 2.2
# 10/10/2020

#Ejercicio 3
defmodule Rotate do
  def rotate_left(n, lst) do
    if n < 0 do
      n = abs(n)
      {first, rest} = Enum.split(lst, length(lst) - n)
      rest ++ first
    else
      {first, rest} = Enum.split(lst, n)
      rest ++ first
    end
  end
 end

#Ejercicio 4
defmodule PrimeFactors do
  def prime_factors(n) when n <= 0 do
    []
  end


  def prime_factors(n) do
    prime_factors(n, 2, [])
    |> Enum.reverse()
  end


  defp prime_factors(1, _, factors) do
    factors
  end


  defp prime_factors(n, divisor, factors) do
    case rem(n, divisor) do
      0 ->
        prime_factors(div(n, divisor), divisor, [divisor | factors])
      _ ->
        prime_factors(n, divisor + 1, factors)
    end
  end
 end


#Ejercicio 5
defmodule GCD do
  def gcd(a, 0) do
    a
  end


  def gcd(a, b) do
    gcd(b, rem(a, b))
  end
 end


#Ejercicio 6
defmodule DeepReverse do
  def deep_reverse(list) do
    Enum.reverse(reverse_nested_lists(list))
  end

  defp reverse_nested_lists(list) do
    Enum.map(list, fn
      inner_list when is_list(inner_list) ->
        reverse_nested_lists(inner_list)
      element ->
        element
    end)
  end
end
