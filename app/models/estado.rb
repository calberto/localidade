class Estado < ApplicationRecord
   belongs_to :patria
  has_many :cidades   

  def estados_por_patria(patria_id)
    dados = Estado.where(patria_id: params[:patria_id]).first
    estados.collect { |c| [c.nome, c.id] }
    render json: dados.to_json
  end

end
