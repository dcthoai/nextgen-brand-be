package com.dct.nextgen.repositories;

import com.dct.nextgen.entity.ContactForm;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactFormRepository extends JpaRepository<ContactForm, Integer> {
}
