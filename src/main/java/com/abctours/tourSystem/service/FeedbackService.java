package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Feedback;
import com.abctours.tourSystem.repository.FeedbackRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * This class contains methods for Feedback
 */
@Service
public class FeedbackService {
    @Autowired
    private FeedbackRepository feedbackRepositoryobject;
    /**
     * Creating LOG
     */
    private static final Logger LOG = LoggerFactory.getLogger(FeedbackService.class);
    /**
     *This method returns all the Feedbacks
     * @return List<Feedback>
     */
    public List<Feedback> findAll(){
        List<Feedback> feedbacks = feedbackRepositoryobject.findAll();
        LOG.info("Successfully retrieved all the feedback details");
        return feedbacks;
    }

    /**
     *This method returns feedback for a given id
     * @param id
     * @return Optional<Feedback>
     */
    public Optional<Feedback> findById(int id){
        Optional<Feedback> feedback = feedbackRepositoryobject.findById(id);
        LOG.info("Successfully retrieved feedback details for the given id");
        return feedback;
    }
    /**
     *
     *this method saves a feedback and returns it
     * @param feedbackobject
     * @return Feedback
     */
    public Feedback saveFeedback(Feedback feedbackobject){
        Feedback savedFeedback = feedbackRepositoryobject.save(feedbackobject);
        LOG.info("successfully saved contact for the given details.");
        return savedFeedback;
    }

    /**
     *This method updates a feedback of given id
     * @param id
     * @param feedback
     * @return
     */
    public Feedback updatefeedback(int id, Feedback feedback) {
        LOG.info("updating feedback for a given id.");
        Feedback updatefeedback = feedbackRepositoryobject.findById(id).orElse(null);
        if (updatefeedback != null){
            updatefeedback.setName(feedback.getName());
            updatefeedback.setEmail(feedback.getEmail());
            updatefeedback.setMessage(feedback.getMessage());
            updatefeedback.setRatingsforthehotel(feedback.getRatingsforthehotel());
            feedbackRepositoryobject.save(updatefeedback);
        }else{
            LOG.warn("No feedback details for the given id");
        }
        return updatefeedback;
    }

    /**
     *This method deletes a feedback for given id
     * @param id
     */
    public void deleteById(int id){
        feedbackRepositoryobject.deleteById(id);
        LOG.info("Successfully deleted the details of the given id.");
    }

}
