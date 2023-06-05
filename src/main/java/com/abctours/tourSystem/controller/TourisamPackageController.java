package com.abctours.tourSystem.controller;


import com.abctours.tourSystem.model.Package;
import com.abctours.tourSystem.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TourisamPackageController {
    @Autowired
    private PackageService packageService;

    @GetMapping("/view-package")
    public String viewreadPackage(Model model){
        model.addAttribute("packages", packageService.findAll());
        return "viewpackage";
    }
    @GetMapping("/add-tourisam-package")
    public String TourisamPackageAdd(Model model){
        model.addAttribute("command", new Package());
        return "addtourisampackage";
    }
    @PostMapping("/add-tourisam-package")
    public String addPackage(@ModelAttribute("package") Package packag){
        packageService.savePackage(packag);
        return "redirect:/view-package";
    }

    @GetMapping("/update-package/{id}")
    public String showupdatePackage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", packageService.findById(id).orElse(null));
        return "updatepackage";
    }
    @PostMapping("/update-package/{id}")
    public String updatePackage(@PathVariable int id, @ModelAttribute("package") Package packag){
        packageService.updatepackage(id, packag);
        return "redirect:/view-package";
    }

    @GetMapping("/delete-tourisam-package/{id}")
    public String deletePackage(@PathVariable int id){
        packageService.deleteById(id);
        return "redirect:/view-package";
    }
}

