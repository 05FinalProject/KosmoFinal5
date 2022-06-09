package com.example.controller.admin;

import com.example.domain.PetVO;
import com.example.service.admin.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AdminRestController {

    @Autowired
    private AdminUserService adminUserService;

    //강아지 리스트
    /*@RequestMapping(value="/adminDog", method= RequestMethod.GET)
    public String adminDog(Model m) {
        PetVO petVO = new PetVO();
        List<PetVO> list = adminUserService.petList(vo);
        m.addAttribute("petList", petList);
        return "/admin/adminDog";
    }
    */
}
