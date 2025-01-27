package com.dct.nextgen.repositories;

import com.dct.nextgen.entity.Story;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StoryRepository extends JpaRepository<Story, Integer> {
}
