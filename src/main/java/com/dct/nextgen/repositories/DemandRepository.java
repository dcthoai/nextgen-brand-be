package com.dct.nextgen.repositories;

import com.dct.nextgen.entity.Demand;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DemandRepository extends JpaRepository<Demand, Integer> {
}
