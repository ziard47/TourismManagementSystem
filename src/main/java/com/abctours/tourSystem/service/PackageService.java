package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Package;
import com.abctours.tourSystem.repository.PackageRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * This class contains methods for package
 */
@Service
public class PackageService {
    @Autowired
    private PackageRepository packagerepositoryobject;
    /**
     * Creating LOG
     */
    private static Logger LOG = LoggerFactory.getLogger(PackageService.class);
    /**
     *
     *This method returns all the Package
     * @return List<Customer>
     */
    public List<Package> findAll(){
        List<Package> packages = packagerepositoryobject.findAll();
        LOG.info("Successfully retrieved all the package details");
        return packages;
    }
    /**
     *This method returns package for a given id
     * @param id
     * @return Optional<package>
     */
    public Optional<Package> findById(int id){
        Optional<Package> packag = packagerepositoryobject.findById(id);
        LOG.info("Successfully retrieved package details for the given id");
        return packag;
    }
    /**
     * this method saves a package and returns it
     * @param packageobject
     * @return
     */
    public Package savePackage(Package packageobject){
        Package savedPackages = packagerepositoryobject.save(packageobject);
        LOG.info("successfully saved package for the given details.");
        return savedPackages;
    }
    /**
     *
     * This method updates a package of given id
     * @param id
     * @param packag
     * @return
     */

//    update code of the packge
    public Package updatepackage(int id, Package packag) {
        LOG.info("updating package for a given id.");
        Package updatepackage = packagerepositoryobject.findById(id).orElse(null);
        if (updatepackage != null){
            updatepackage.setPackagename(packag.getPackagename());
            updatepackage.setPackagetype(packag.getPackagetype());
            updatepackage.setPrice(packag.getPrice());
            updatepackage.setDescription(packag.getDescription());
            updatepackage.setLocation(packag.getLocation());
            updatepackage.setActivity(packag.getActivity());
            updatepackage.setDestination(packag.getDestination());
            updatepackage.setAvailability(packag.getAvailability());
            packagerepositoryobject.save(updatepackage);
        }else{
            LOG.warn("No package details for the given id");
        }
        return updatepackage;
    }
    /**
     *This method deletes a package for given id
     * @param id
     */
    public void deleteById(int id){
        packagerepositoryobject.deleteById(id);
        LOG.info("Successfully deleted the details of the given id.");
    }

}
    
