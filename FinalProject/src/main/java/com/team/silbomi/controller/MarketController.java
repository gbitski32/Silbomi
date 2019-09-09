package com.team.silbomi.controller;

import com.team.silbomi.VO.MarketReplyVO;
import com.team.silbomi.VO.MarketVO;
import com.team.silbomi.service.MarketService;
import com.team.silbomi.util.CaptchaAPI;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
@RequestMapping("/market/*")
public class MarketController {
	
	private static final Logger logger = LoggerFactory.getLogger(MarketController.class);
	
	@Inject
	private MarketService service;

	@RequestMapping(value="register", method=RequestMethod.GET)
	public void register() {
	}

	@RequestMapping(value="registAction", method=RequestMethod.POST)
	public String registAction(MarketVO vo, HttpSession session, HttpServletRequest req,
			@RequestParam("thumnail") MultipartFile file) throws Exception {
		logger.info("registAction 진입");
		System.out.println("아이디 " + vo.getGoodsName());
		OutputStream out = null;
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replaceAll("-", "");
		String dirPath = session.getServletContext().getRealPath("/resources/captchaImg");
		CaptchaAPI captcha = new CaptchaAPI();
		captcha.deleteAll(dirPath);

		try {
			String originalName = new String(file.getOriginalFilename().getBytes());
			System.out.println("originalName : " + originalName);
			if ("".equals(originalName)) {
				return "redirect:/market/list";
			}

			byte[] bytes = file.getBytes();
			String directory = session.getServletContext().getRealPath("/resources/images/market");
			String ext = originalName.substring(originalName.lastIndexOf("."));
			String fileName = directory + File.separator + uuid + ext;
			System.out.println("fileName : " + fileName);
			File fullFile = new File(fileName);
			out = new FileOutputStream(fullFile);
			out.write(bytes);
			String thumnail = "/silbomi/resources/images/market/" + uuid + ext;
			System.out.println("thumnail VO : " + thumnail);
			vo.setGoodsThumnail(thumnail);
			this.service.register(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/market/list";
	}

	@RequestMapping(value="views", method=RequestMethod.GET)
	public void views(Model model, @RequestParam("idx") String goodsNum) throws Exception {
		MarketVO vo = service.viewOne(goodsNum);
		List<MarketReplyVO> replyList = service.replyList(goodsNum);
		int replyCount = service.replyCount(goodsNum);
		model.addAttribute("vo", vo);
		model.addAttribute("replyCount", replyCount);
		model.addAttribute("replyList", replyList);
	}
	
	@RequestMapping("deleteGoods")
	@ResponseBody
	public String deleteGoods(Model model, String idx, HttpSession session) throws Exception {
		String result = "";
		System.out.println("deleteGoodsIdx : " + idx);
		// 게시물 회원정보 확인후 하세요
		service.deleteGoods(idx);
		result = "true";
		
		return result;
	}

	@RequestMapping(value="list", method=RequestMethod.GET)
	public void list(Model model) throws Exception {
		List<MarketVO> list = service.list();
		logger.info("list : " + ((MarketVO) list.get(0)).getGoodsName());
		model.addAttribute("list", list);
	}

	@RequestMapping("captcha")
	@ResponseBody
	public Map<String, Object> captcha(Model model, HttpServletRequest req, 
			HttpSession session) {
		
		Map<String, Object> map = new HashMap();
		String dirPath = session.getServletContext().getRealPath("/resources/captchaImg");
		System.out.println("controller 의 경로 : " + dirPath);
		CaptchaAPI captcha = new CaptchaAPI();
		System.out.println("refresh : " + req.getParameter("refresh"));
		System.out.println("c_img : " + req.getParameter("c_img"));
		if (req.getParameter("refresh") != null && !req.getParameter("c_img").equals("")
				&& req.getParameter("refresh").equals("1")) {
			System.out.println("이미지1 : " + req.getParameter("c_img"));
			String[] imgs = req.getParameter("c_img").split("captchaImg/");
			System.out.println("이미지2 : " + imgs[1]);
			captcha.deleteImg(dirPath, imgs[1]);
		}

		String key = captcha.captchaNkey();
		String image = captcha.captchaImage(key, dirPath);
		map.put("key", key);
		map.put("capImage", image);
		return map;
	}

	@RequestMapping("captchaResult")
	@ResponseBody
	public String captchaResult(Model model, HttpServletRequest req) {
		String key = req.getParameter("key");
		String value = req.getParameter("value");
		CaptchaAPI captcha = new CaptchaAPI();
		String result = captcha.captchaNkeyResult(key, value);
		return result;
	}

	@RequestMapping(value="ckUpload.do", method=RequestMethod.POST)
	public void ckUpload(HttpSession session, HttpServletRequest req, HttpServletResponse resp) {
		try {
			MultipartHttpServletRequest req1 = (MultipartHttpServletRequest) req;
			Iterator itr = req1.getFileNames();
			Enumeration eu = req1.getParameterNames();

			while (eu.hasMoreElements()) {
				System.out.println(eu.nextElement().toString());
			}
		} catch (Exception e) {
			System.out.println("예욉라생");
			e.printStackTrace();
		}

	}

	@RequestMapping(value="replyWrite", method =RequestMethod.POST)
	public String replyWrite(MarketReplyVO vo, Model model, HttpServletRequest req,
			@RequestParam("idx") String replyGroup) throws Exception {
		vo.setReplyGroup(replyGroup);
		if (req.getParameter("flag") != null && req.getParameter("flag").equals("1")) {
			System.out.println("써브 group  : " + req.getParameter("replySubGroup"));
			service.replyStepWrite(vo);
		} else {
			service.replyWrite(vo);
		}

		this.service.addCount(replyGroup);
		model.addAttribute("idx", replyGroup);
		return "redirect:views";
	}

	@RequestMapping("replyDelete")
	public String replyDelete(Model model, @RequestParam("replyNum") String replyNum, 
				String idx, String replyGroup) throws Exception {
		System.out.println("delete Reply Num : " + replyNum);
		service.replyDelete(replyNum, replyGroup);
		model.addAttribute("idx", idx);
		return "redirect:views";
	}
}