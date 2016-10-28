package br.com.optosistem.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import br.com.optosistem.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
