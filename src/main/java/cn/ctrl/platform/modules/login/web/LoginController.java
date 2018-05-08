package cn.ctrl.platform.modules.login.web;

import cn.ctrl.framework.common.basic.JsonContent;
import cn.ctrl.platform.component.basic.BaseController;
import cn.ctrl.platform.component.basic.Constants;
import cn.ctrl.platform.modules.system.service.ResourcesService;
import cn.ctrl.platform.orm.entity.SysResources;
import cn.ctrl.platform.orm.entity.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections.map.HashedMap;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Created by HuifengWang on 2016/12/20.
 */
@Slf4j
@Controller
public class LoginController extends BaseController{

    @Autowired
    ResourcesService resourcesService;
    @Autowired
    RestTemplate restTemplate;

    @GetMapping("login")
    public String login(HttpServletRequest request){
        //清除用户登陆的错误信息
        Subject security = SecurityUtils.getSubject();
        if (security.isAuthenticated()) {
            request.getSession().removeAttribute(Constants.LOGIN_ERROR_MSG);
            return "redirect:/";
        }
        return "login";
    }

    @PostMapping("login")
    public String doLogin(){
        return "redirect:/";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session){
        SecurityUtils.getSubject().logout();
        return "redirect:/login";
    }

    @RequestMapping(value = "login",params = "error")
    public String loginError(){
        return "login";
    }

    /**
     * 首页
     * @return
     */
    @RequestMapping("/")
    public String index(Model model){
        SysUser user =this.getCurrentSysUser();
        List<SysResources> list = resourcesService.getMenuTreeByUser(user.getId());
        model.addAttribute("tree",list);
        return "system/index";
    }

    @RequestMapping("index")
    public String indexInfo(Model model){
        return "system/component/content";
    }


    @RequestMapping("hello")
    public String hello(){
        return "system/component/content";
    }
}
