class Link < ActiveRecord::Base

  def self.testar_links

    all.each do |link|

      begin
        if HTTParty.get(link.url).body.include? link.conteudo_esperado
          Enviador.enviar_email("Site ok", link.url)
        else
          Enviador.enviar_email("Site caido", link.url)
        end
      rescue
        Enviador.enviar_email("Site caido", link.url)
      end
    end
  end

end
