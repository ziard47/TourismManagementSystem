package com.abctours.tourSystem.repository;

import com.abctours.tourSystem.model.Package;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PackageRepository extends JpaRepository<Package, Integer>{
}
