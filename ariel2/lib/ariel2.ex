defmodule Hw.Ariel2 do
  @doc """
  Actividad 2.2: Programación Funcional Parte 2

  Fernanda Cantú
  Alina Rosas

  Entregado: 30/04/2023
  Corregido: 12/06/2023
  """

  # 3.- La función rotate-left toma dos entradas: un número entero n y una lista lst.
  # Devuelve la lista que resulta de rotar lst un total de n elementos a la
  #izquierda. Si n es negativo, rota a la derecha.
  def rotate_left([], _n), do: []
  def rotate_left(lst, n) when is_list(lst) do
    if n == 0 do
      lst
    else
      if n > 0 do
        [head | tail] = lst
        rotate_left(tail ++ [head], n - 1)
      else
        len = length(lst)
        x = rem(n, len)
        rotate_left(lst, len + x)
      end
    end
  end

  # 4.- La función prime-factors toma un número entero n como entrada (n ¿ 0) y
  # devuelve una lista que contiene los factores primos de n en orden ascendente.
  # Los factores primos son los números primos que dividen a un número de manera
  # exacta. Si se multiplican todos los factores primos, se obtiene el número
  # original.
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

  # 5.- La función gcd toma dos números enteros positivos a y b como entrada, donde
  # a > 0 y b > 0. Devuelve el máximo común divisor (GCD por sus siglas en inglés)
  # de a y b. No se debe usar la función gcd o similar predefinida.
  def gcd(a, 0) do
    a
  end

  def gcd(a, b) do
    gcd(b, rem(a,b))
  end

  # 6.- La función deep-reverse toma una lista como entrada. Devuelve una lista con
  # los mismos elementos que su entrada, pero en orden inverso. Si hay listas
  # anidadas, estas también deben invertirse
  def deep_reverse([]), do: []
  def deep_reverse(list) do
    if is_list(list) do
      [head | tail] = list
      deep_reverse(tail) ++ [deep_reverse(head)]
    else
      list
    end
  end
end
