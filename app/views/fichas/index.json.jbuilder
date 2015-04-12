json.array!(@fichas) do |ficha|
  json.extract! ficha, :id, :paciente_id, :medico_id, :altura, :imc, :classificacao, :riscos, :circunferencia, :pressao, :glicose, :batimentos, :dieta, :medicamentos
  json.url ficha_url(ficha, format: :json)
end
