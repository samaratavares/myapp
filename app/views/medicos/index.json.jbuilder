json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nome, :endereco, :telefone, :email, :crm
  json.url medico_url(medico, format: :json)
end
