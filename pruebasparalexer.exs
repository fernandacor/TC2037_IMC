defmodule RegexDigitos do
  def tiene_digitos?(string) do
    pattern = ~r/\d+/

    case Regex.match?(pattern, string) do
      true ->
        IO.puts("El string '#{string}' contiene digitos.")

      false ->
        IO.puts("El string '#{string}' no contiene digitos.")
    end
  end
end

defmodule ResaltadorSintaxis do
  def build(input_file) do
    output_file = "resaltadorsintaxis.html"

    case File.read(input_file) do # Lee el archivo de cs
      {:ok, content} -> #:ok = exito leyendo / content = donde se guarda el contenido del cs
        highlighted_content =
          content
          |> highlight_punctuation()
          |> highlight_comments()
          |> highlight_strings()
          |> highlight_numbers()
          |> highlight_reserved()
          |> highlight_cond()
          |> highlight_builtinfunctions()
          |> datatypes()
          # |> highlight_variables()
          # |> highlight_functions()

        html_content = header_html() <> highlighted_content <> footer_html()

        case File.write(output_file, html_content) do
          :ok -> #if es exitoso:
            IO.puts("HTML generated correctly.")
        end
    end
  end

  # HASTA AQUI TODO BIEN.

  def check_line(line) do

  end

  defp highlight_punctuation(content) do
    punctuation_regex = ~r/(\(|\)|\{|\}|\[|\]|\,|\;|\:|\=)/
    Regex.replace(punctuation_regex, content, "<span class=\"punctuation\">\\1</span>")
  end

  defp highlight_comments(content) do
    comment_regex = ~r/(\/\/.*$|\/\*.*?\*\/)/m
    Regex.replace(comment_regex, content, "<span class=\"comment\">\\1</span>")
  end

  defp highlight_strings(content) do
    string_regex = ~r/('[^']*')/
    Regex.replace(string_regex, content, "<span class=\"string\">\\1</span>")
  end


  defp highlight_reserved(content) do
    reserved_regex = ~r/(static|void|public|private|protected|MonoBehaviour)/
    Regex.replace(reserved_regex, content, "<span class=\"reserved\">\\1</span>")
  end

  defp highlight_cond(content) do
    cond_regex = ~r/(using|if|else|for|case|switch|while|break)/
    Regex.replace(cond_regex, content, "<span class=\"cond\">\\1</span>")
  end

  defp highlight_builtinfunctions(content) do
    builtinfunctions_regex = ~r/(Start|Update|Play|GetComponent|FindGameObjectWithTag|OnTriggerEnter2D|Log|SetBool|Destroy|SetGameState)/
    Regex.replace(builtinfunctions_regex, content, fn match -> "<span class=\"builtinfunctions\">#{match}</span>" end)
  end

  defp highlight_numbers(content) do
    numbers_regex = ~r/(\+|\-)?([0-9])(\.[0-9]+)?(f)?/
    Regex.replace(numbers_regex, content, "<span class=\"numbers\">\\1\\2\\3\\4</span>")
  end

  defp datatypes(content) do
    datatypes_regex = ~r/(int|float|double|bool|char|long|GameManager|AudioSource|Animator|GameObject|string|Sprite|Image)/
    Regex.replace(datatypes_regex, content, "<span class=\"datatypes\">\\1</span>")
  end

  #FUNCTION TO HIGHLIGHT VARIABLES
  # defp highlight_variables(content) do
  #  variables_regex = ~r/([a-z]+[0-9]*)/
  #  Regex.replace(variables_regex, content, "<span class=\"variables\">\\1</span>")
  # end

  # #FUNCTION TO HIGHLIGHT FUNCTION NAMES
  # defp highlight_functions(content) do
  #  functions_regex = ~r/([a-z]+[0-9]*)/
  #  Regex.replace(functions_regex, content, "<span class=\"functions\">\\1</span>")
  # end

  defp header_html() do
    """
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8">
        <title>Resaltador de Sintaxis</title>
        <link rel="stylesheet" href="resaltadorsintaxis.css">
      </head>
      <body>
      <h1>Resaltador de Sintaxis para C#</h1>
      <h3> Creado por: Fernanda Cantú A01782232 y Alina Rosas A01252720</h3>
      <hr>
        <pre>
    """
  end

  defp footer_html() do
    """
        </pre>
      </body>
    </html>
    """
  end
end

defmodule ResaltadorSintaxis do
  def build(input_file) do
    output_file="resaltadorsintaxis.html"
    html_content = header_html() <> highlight(input_file) <> footer_html()
    File.write(output_file, html_content)
  end

  defp highlight(input_file) do
    content = File.read!(input_file)
      content
      |> String.split(content, "\n")
      |> Enum.map(String.trim_trailing/1)
      |> Enum.map(fn line ->
        check_line(line, output_file)
    end)
  end

  # defp check_line("", _output_file), do: File.write(output_file, "<br>", [:append])
  defp check_line(line, output_file) do
    comment_regex = ~r/(\/\/.*$|\/\*.*?\*\/)/m
    punctuation_regex = ~r/(\(|\)|\{|\}|\[|\]|\,|\;|\:|\=)/
    string_regex = ~r/('[^']*')/
    reserved_regex = ~r/(static|void|public|private|protected|MonoBehaviour)/
    cond_regex = ~r/(using|if|else|for|case|switch|while|break)/
    builtinfunctions_regex = ~r/(Start|Update|Play|GetComponent|FindGameObjectWithTag|OnTriggerEnter2D|Log|SetBool|Destroy|SetGameState)/
    numbers_regex = ~r/(\+|\-)?([0-9])(\.[0-9]+)?(f)?/
    datatypes_regex = ~r/(int|float|double|bool|char|long|GameManager|AudioSource|Animator|GameObject|string|Sprite|Image)/

    cond do
      Regex.match?(comment_regex, line) ->
        span(line, comment_regex, "comment", output_file)

      Regex.match?(punctuation_regex, line) ->
        span(line, punctuation_regex, "punctuation", output_file)

      Regex.match?(string_regex, line) ->
        span(line, string_regex, "string", output_file)

      Regex.match?(reserved_regex, line) ->
        span(line, reserved_regex, "reserved", output_file)

      Regex.match?(cond_regex, line) ->
        span(line, cond_regex, "cond", output_file)

      Regex.match?(builtinfunctions_regex, line) ->
        span(line, builtinfunctions_regex, "builtinfunctions", output_file)

      Regex.match?(numbers_regex, line) ->
        span(line, numbers_regex, "numbers", output_file)

      Regex.match?(datatypes_regex, line) ->
        span(line, datatypes_regex, "datatypes", output_file)
    end
  end

  defp span(line, regex, class, output_file) do
    [head | _] = Regex.run(regex, line)
    html = "<span class=\"#{class}\">#{head}</span>"
    File.write(output_file, html, [:append])
    line = Regex.replace(regex, line, "", global: false)
    check_line(line, output_file)
  end

  defp header_html() do
    """
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8">
        <title>Resaltador de Sintaxis</title>
        <link rel="stylesheet" href="resaltadorsintaxis.css">
      </head>
      <body>
      <h1>Resaltador de Sintaxis para C#</h1>
      <h3> Creado por: Fernanda Cantú A01782232 y Alina Rosas A01252720</h3>
      <hr>
        <pre>
    """
  end

  defp footer_html() do
    """
        </pre>
      </body>
    </html>
    """
  end
end

defmodule ResaltadorSintaxis do
  def build(input_file) do
    case File.read(input_file) do
      {:ok, content} ->
        output_file="resaltadorsintaxis.html"
        html_content = header_html() <> highlight(content) <> footer_html()
        File.write(output_file, html_content)
      {:error, reason} ->
        IO.puts "Error: #{reason}"
    end
  end
