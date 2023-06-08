package com.abctours.tourSystem.repository;

import com.abctours.tourSystem.model.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback,Integer> {
}

