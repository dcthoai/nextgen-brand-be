package com.dct.nextgen.repositories;

import com.dct.nextgen.entity.Company;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyRepository extends JpaRepository<Company, Integer> {
}
