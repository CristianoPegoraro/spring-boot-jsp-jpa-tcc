package br.com.optosistem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.optosistem.domain.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {

}
