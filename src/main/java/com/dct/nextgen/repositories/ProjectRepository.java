package com.dct.nextgen.repositories;

import com.dct.nextgen.entity.Project;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectRepository extends JpaRepository<Project, Integer> {
}
