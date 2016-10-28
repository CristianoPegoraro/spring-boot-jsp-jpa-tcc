package br.com.optosistem.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import br.com.optosistem.domain.Consulta;



public interface ConsultaRepository extends JpaRepository<Consulta, Long> {
	
	
}
