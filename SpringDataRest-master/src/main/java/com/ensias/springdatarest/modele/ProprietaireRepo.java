package com.ensias.springdatarest.modele;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProprietaireRepo extends CrudRepository<Proprietaire, Long> {
}

