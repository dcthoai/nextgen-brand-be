package com.dct.nextgen.repositories;

import com.dct.nextgen.entity.Job;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JobRepository extends JpaRepository<Job, Integer> {
}
