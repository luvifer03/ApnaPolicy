package com.cognizant.cms.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cognizant.cms.dao.CheckClaimRepository;
import com.cognizant.cms.dao.ClaimRepository;
import com.cognizant.cms.dao.FileUploadRepository;
import com.cognizant.cms.dao.UserRepository;
import com.cognizant.cms.models.CheckClaim;
import com.cognizant.cms.models.Claim;
import com.cognizant.cms.models.FileUpload;
import com.cognizant.cms.models.Help;
import com.cognizant.cms.models.Policy;
import com.cognizant.cms.models.User;
import com.cognizant.cms.models.UserLogin;
import com.cognizant.cms.services.CheckClaimService;
import com.cognizant.cms.services.ClaimService;
import com.cognizant.cms.services.FileUploadService;
import com.cognizant.cms.services.HelpService;
import com.cognizant.cms.services.MemberService;
import com.cognizant.cms.services.UserService;

@Controller
@RequestMapping("/cms")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private MemberService memberService;

	@Autowired
	private HelpService helpService;

	@Autowired
	private ClaimService claimService;

	@Autowired
	private CheckClaimService checkClaimService;

	@Autowired
	private FileUploadService fileService;

	private static String UPLOAD_FOLDER = "C:\\Users\\aashi\\Desktop\\Project\\CMS-3 11 4 latesetcurrent\\CMS-3 claaim done\\CMS-3";
	private static int sessionUserId;
	private static String pimageName;
	private static int uploadId;
	private static String memberApprovalAdmin = "memberApprovalAdmin";

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String userHome1(Model model) {

		model.addAttribute("user", new UserLogin());
		return "userLogin";
	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.GET)
	public String userHome(Model model) {

		model.addAttribute("user", new UserLogin());
		return "userLogin";
	}

	@PostMapping("/userlogin")
	public String userLogin(@ModelAttribute("user") UserLogin userLogin, BindingResult result, Model model,
			HttpSession session) {

		if (result.hasErrors()) {
			return "userLogin";
		}

		else {
			boolean status = userService.login(userLogin);
			if (status) {

				Optional<User> user = userService.getUser(userLogin.getUserId());
				User loggedInUser = user.get();
				session.setAttribute("id", loggedInUser.getId());
				session.setAttribute("name", loggedInUser.getfName());
				if (loggedInUser.getStatus().equals("activated")) {

					System.out.println("logged in");
					model.addAttribute("message", "You are logged in");
					// return "userLogin";
					if (loggedInUser.getUserType().equalsIgnoreCase("admin")) {
						return "adminHome";
					} else {
						sessionUserId = loggedInUser.getId();
						return "memberHome";
					}

				}

				else {
					System.out.println("login not approved");
					model.addAttribute("message", "You are not yet activated by the admin,please wait for Activation");
					return "userLogin";
				}
			} else {
				System.out.println("invalid");
				model.addAttribute("message", "Invalid Username OR password");
				return "userLogin";
			}

		}
	}

	@GetMapping("/reg")
	public String userRegisterForm(@ModelAttribute("adreg") User user, Model model) {

		return "reg";
	}

	@PostMapping("/saveuser")
	public String adminRegister(@Validated @ModelAttribute("adreg") User user, BindingResult result, Model model) {

		if (result.hasErrors()) {

			return "reg";
		} else {
			String uniqueUser = userService.saveUser(user);
			System.out.println("inside controller");
			System.out.println(uniqueUser);
			model.addAttribute("message", uniqueUser);
			return "reg";
		}

	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(HttpSession session) {
		return "about";
	}

	@RequestMapping(value = "/feedback", method = RequestMethod.GET)
	public String feedback() {
		return "feedback";
	}

	@RequestMapping(value = "contactus", method = RequestMethod.GET)
	public String contactUs(HttpSession session) {
		return "contactUs";
	}

	@RequestMapping(value = "/gsdadmin", method = RequestMethod.GET)
	public String gsdAdmin(HttpSession session, Model model) {

		List<Help> help = helpService.getAll();
		System.out.println(help);
		model.addAttribute("helpList", help);
		return "gsdAdmin";
	}

	@RequestMapping(value = "/memberapprovaladmin", method = RequestMethod.GET)
	public String memberApproval(HttpSession session, Model model) {

		List<User> user = userService.getAll();
		System.out.println(user);
		model.addAttribute("userlist", user);
		return memberApprovalAdmin;
	}

	@GetMapping("/activate")
	public String activateS(@RequestParam("userid") int uid, Model model) {
		Optional<User> user = userService.getUser(uid);
		User activateUser = user.get();
		String status = activateUser.getStatus();

		if (!status.equals("activated")) {
			activateUser.setStatus("activated");
			User activatedUser = userService.save(activateUser);

			model.addAttribute("message",
					activatedUser.getfName().toUpperCase() + " with UserId " + uid + "  successfully activated");
			List<User> user1 = userService.getAll();
			System.out.println(user1);
			model.addAttribute("userlist", user1);
			return memberApprovalAdmin;

		}

		else {
			model.addAttribute("message", activateUser.getfName() + " with UserId  " + uid + "  is already activated");
			List<User> displayUsers = userService.getAll();
			System.out.println(displayUsers);
			model.addAttribute("userlist", displayUsers);
			return memberApprovalAdmin;
		}

	}

	@GetMapping("/deactivate")
	public String deactivateS(@RequestParam("userid") int uid, Model model) {
		Optional<User> user = userService.getUser(uid);
		User deactivateUser = user.get();
		String status = deactivateUser.getStatus();
		if (!status.equals("deactivated")) {
			deactivateUser.setStatus("deactivated");
			User deactivatedUser = userService.save(deactivateUser);
			model.addAttribute("message",
					deactivatedUser.getfName() + " with UserId " + uid + " succesfully deactivated");
			List<User> displayUser = userService.getAll();
			System.out.println(displayUser);
			model.addAttribute("userlist", displayUser);
			return memberApprovalAdmin;
		} else {
			model.addAttribute("message",
					deactivateUser.getfName() + " with UserId " + uid + " is already deactivated");
			List<User> displayUser = userService.getAll();
			System.out.println(displayUser);
			model.addAttribute("userlist", displayUser);
			return memberApprovalAdmin;
		}
	}

	@RequestMapping(value = "/claimapprovaladmin", method = RequestMethod.GET)
	public String claimApproval(Model model, HttpSession session) {
		List<CheckClaim> checkClaim = claimService.getAll();
		System.out.println("prinitng updated claim list"+checkClaim);
		model.addAttribute("claimlist", checkClaim);
		return "claimApprovalAdmin";
	}

	@GetMapping("/approveclaim")
	public String approveClaim(@RequestParam("claimid") int claimId, Model model) {
		Optional<Claim> claim = claimService.getId(claimId);
		Claim approveClaim = claim.get();
		String status = approveClaim.getStatus();
		if (!status.equals("Approved")) {
			approveClaim.setStatus("Approved");
			claimService.updateClaim(approveClaim);
			model.addAttribute("message", "Claim with Claim Id: " + claimId + " has been successfully approved");
			Optional<CheckClaim> check = checkClaimService.findById(claimId);
			CheckClaim ch = check.get();
			ch.setStatus("Approved");
			checkClaimService.save(ch);
			List<CheckClaim> checkClaim = claimService.getAll();
			model.addAttribute("claimlist", checkClaim);

			return "claimApprovalAdmin";
		} else {
			model.addAttribute("message", "Claim with Claim Id: " + claimId + " Already Activated");
			List<CheckClaim> checkClaim = claimService.getAll();
			model.addAttribute("claimlist", checkClaim);
			return "claimApprovalAdmin";
		}

	}

	@GetMapping("/rejectclaim")
	public String rejectClaim(@RequestParam("claimid") int claimId, Model model) {
		Optional<Claim> claim = claimService.getId(claimId);
		Claim rejectClaim = claim.get();
		String status = rejectClaim.getStatus();
		if (!status.equals("Rejected")) {
			rejectClaim.setStatus("Rejected");
			claimService.updateClaim(rejectClaim);
			model.addAttribute("message", "Claim with Claim Id: " + claimId + " has been rejected");
			Optional<CheckClaim> check = checkClaimService.findById(claimId);
			CheckClaim ch = check.get();
			ch.setStatus("Rejected");
			checkClaimService.save(ch);
			List<CheckClaim> checkClaim = claimService.getAll();
			model.addAttribute("claimlist", checkClaim);

			return "claimApprovalAdmin";

		} else {
			model.addAttribute("message", "Claim with Claim Id: " + claimId + " Already Rejected");
			List<CheckClaim> checkClaim = claimService.getAll();
			model.addAttribute("claimlist", checkClaim);
			return "claimApprovalAdmin";

		}

	}

	@GetMapping("/sendforcorrection")
	public String sendForCorrection(@RequestParam("claimid") int claimId, Model model) {
		Optional<Claim> claim = claimService.getId(claimId);
		Claim sfcClaim = claim.get();
		String status = sfcClaim.getStatus();
		if (!status.equals("Sent for Correction")) {
			sfcClaim.setStatus("Sent for Correction");
			claimService.updateClaim(sfcClaim);
			model.addAttribute("message", "Claim with Claim Id: " + claimId + " has been sent for Correction");
			Optional<CheckClaim> check = checkClaimService.findById(claimId);
			CheckClaim ch = check.get();
			ch.setStatus("Sent for Correction");
			checkClaimService.save(ch);
			List<CheckClaim> checkClaim = claimService.getAll();
			model.addAttribute("claimlist", checkClaim);

			return "claimApprovalAdmin";

		} else {
			model.addAttribute("message", "Claim with Claim Id: " + claimId + " already sent for correction");
			List<CheckClaim> checkClaim = claimService.getAll();
			model.addAttribute("claimlist", checkClaim);
			return "claimApprovalAdmin";

		}

	}

	@RequestMapping(value = "/documentupload", method = RequestMethod.GET)
	public String documentUpload(HttpSession session) {

		return "documentUpload";
	}

	@RequestMapping(value = "/claimrequestmember", method = RequestMethod.GET)
	public String raiseClaim(Model model, HttpSession session) {
		model.addAttribute("claim", new Claim());
		return "claimRequestMember";
	}

	@PostMapping("/claimrequest")
	public String processClaim(@ModelAttribute("claim") Claim claim, Model model, BindingResult result) {
		if (result.hasErrors()) {
			return "claimRequestMember";
		}

		else {

			String uniquePolicy = claimService.saveClaim(claim);
			System.out.println("inside controller");
			System.out.println(uniquePolicy);
			model.addAttribute("message", uniquePolicy);
			return "claimRequestMember";

		}

	}

	@RequestMapping(value = "/trackclaimmember", method = RequestMethod.GET)
	public String trackClaimStatusMember(Model model, HttpSession session) {
		List<Claim> claim1 = claimService.getUserById(sessionUserId);
		System.out.println(claim1);
		// String claimId=claimService.getClaimIdFromSession(claim1)
		model.addAttribute("claimlist", claim1);
		// session.setAttribute("claimid", claim1.);

		return "trackClaimMember";
	}

	@RequestMapping(value = "/resubmitclaimmember", method = RequestMethod.GET)
	public String resubmitClaim(@RequestParam("claimid") int cid, Model model, Claim claim, HttpSession session) {
		model.addAttribute("updateclaim", new Claim());
		model.addAttribute("claimId", cid);
		return "updateClaimMember";
	}

	@GetMapping("/gsdmember")
	public String help(Model model, HttpSession session) {
		model.addAttribute("help", new Help());
		return "gsdMember";
	}

	@PostMapping("/afterhelp")
	public String help1(@ModelAttribute("help") Help h, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "gsdMember";
		} else {
			int status = memberService.help(h);
			if (status == 1) {
				model.addAttribute("message", "Your Issue is Registered");
				return "gsdMember";
			} else {
				model.addAttribute("message", "Something went wrong");
				return "gsdMember";
			}
		}
	}

	@PostMapping("/updateclaimrequest")
	public String updateClaim(@ModelAttribute("updateclaim") Claim claim, BindingResult result, Model model) {
		claimService.save(claim);
		System.out.println(claim);
		claimService.updateCheckClaim(claim);
		model.addAttribute("message", "Claim Updated");
		return "updateClaimMember";

	}

	@RequestMapping("adminhome")
	public String adminHome(Model model, HttpSession session) {
		if (session.getAttribute("id") == null) {
			model.addAttribute("user", new UserLogin());
			return "userLogin";
		} else {
			return "adminHome";
		}
	}

	@RequestMapping("memberhome")
	public String userHome(Model model, HttpSession session) {
		if (session.getAttribute("id") == null) {
			model.addAttribute("user", new UserLogin());
			return "userLogin";
		} else {
			return "memberHome";
		}

	}

	@PostMapping("upload")
	public String uploadFile(@RequestParam("image") MultipartFile pImage, @RequestParam("userId") Integer uid,
			Model model) {
		pimageName = pImage.getOriginalFilename();
		uploadId = uid;
		FileUpload fUpload = new FileUpload(uploadId, pimageName);
		System.out.println(fUpload);
		fileService.save(fUpload);
		try {
			byte[] bytes = pImage.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER, pImage.getOriginalFilename());
			Files.write(path, bytes);
		} catch (IOException e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "uploaded");
		return "documentUpload";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/cms/userlogin";
	}

}
