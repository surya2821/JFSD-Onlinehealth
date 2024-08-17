package com.example.sdpproject;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class Rest {
	
	
	PatientDAOClass pd;
	
	
	AppointmentDAOClass ad;
	
	SdpProjectApplication sd;
	
	ImageRepo ir;
	
	@Autowired
	public Rest(PatientDAOClass pd, AppointmentDAOClass ad, ImageRepo ir) {
		this.pd = pd;
		this.ad=ad;
		this.ir=ir;
	}
	
	@Autowired
	private EmailSenderService senderService;
	
	@GetMapping("/res")
	public String res(){
		return "resources";
	}
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("pat1", new PatientUser());
		return "login";
	}
	
	
	@GetMapping("/insert")
	public String display(Model model, @ModelAttribute("patient2") PatientUser p2){
		model.addAttribute("pat1",p2);
		pd.insert(p2);
		return "redirect:/login";
	}
	
	@GetMapping("/tests")
	public String tests() {
		return "test";
	}
	
	@GetMapping("/database")
	public String get(Model m1) {
		 List<PatientUser> d=pd.role("Doctor");
		m1.addAttribute("doc",d);
		
		List<PatientUser> p=pd.role("Patient");
		m1.addAttribute("pat",p);
		return "database";
	}
	
	static String name;
	
	@GetMapping("/success")
	public String success(Model model,@ModelAttribute("patient2") PatientUser p2) {
		List<PatientUser> l;
		l=pd.getAll();
		for(PatientUser p:l) {
			System.out.println(p.getRole());
		}
		for(PatientUser doc:l) {
			if(doc.getEmail().equals(p2.getEmail()))
				if(doc.getPassword().equals(p2.getPassword())) {
					name=doc.getName();
					System.out.println(name);
					System.out.println(doc.getRole());
					if(doc.getRole().equals("Doctor")) {
					return "doctorhome";
					}
					else {
						return "success";
					}
				}
		}
		
		return "redirect:/login";
	}
	
	
	@GetMapping("/logout")
	public String logout() {
		name="";
		System.out.println(name);
		return "redirect:/";
	}
	
	@GetMapping("/about")
	public String about() {
		return "aboutus";
	}
	
	@GetMapping("/conditions")
	public String conditions() {
		return "conditions";
	}
	
	@GetMapping("/pay/anitha")
	public String payement(Model model) {
		System.out.println(name);
		if(name=="" || name==null) return "redirect:/login";
		model.addAttribute("app1",new Appointment() );
		return "payement_sarah";
	}
	
	@GetMapping("/booked")
	public String booked(@ModelAttribute("app2") Appointment a ) {
		sd.sendSMS(a);
		
		PatientUser p=pd.name(a.getPat());
		System.out.println(p);
		sd.sendSMS2(a,p);
		
		PatientUser p2=pd.name(a.getPat());
		
		senderService.sendSimpleEmail(p2.getEmail(),
				"Your Online Consultation Booking",
				"Hello "+a.getPat()+",\n"+"Thank you for booking me for your health consultation"+"\n"+"We will make sure to give you the best of the treatment"+"\n"+"Date of the Appointment:"+a.getDate()+"\n"+"Time of the Appointment: "+a.getTime()+"\n"+"Regards,\n"+a.getDoc());
		
		ad.book(a);
		return "redirect:/app";
	}
	
	@GetMapping("/app")
	public String app(Model model) {
		System.out.println(name);
		List<Appointment> l=ad.papp(name);
		model.addAttribute("myap",l);	
		System.out.println(name);
		System.out.println(l);
		return "myapp";
	}
	
	
	@GetMapping("/docapp")
	public String docapp(Model model) {
		System.out.println(name);
		List<Appointment> l=ad.dapp(name);
		model.addAttribute("myap",l);	
		return "dapp";
	}
	
	@GetMapping("/pdelete/{id}")
	public String pdelete(@PathVariable("id") int id) {
		pd.delete(id);
		return "redirect:/database";
	}
	
	@GetMapping("/ok")
	public String ok() {
		return "success";
	}
	@GetMapping("/dok")
	public String dok() {
		return "doctorhome";
	}
	
	@GetMapping("/image")
	public String details(Model m) {
		List<Images> l=ir.findByname(name);	
		m.addAttribute("list",l);
		return "details";
	}
	
	@PostMapping("/upload")
	public String upload(@RequestParam MultipartFile profile, @ModelAttribute("img") Images img) {
		Images i=new Images();
		i.setImageName(profile.getOriginalFilename());
		i.setName(name);
		System.out.println(img.getName());
		Images im=ir.save(i);
		if(im!=null) {
			try {
				File f=new ClassPathResource("static/profile").getFile();
				
				Path p=Paths.get(f.getAbsolutePath()+File.separator+profile.getOriginalFilename());
				System.out.println(p);
				Files.copy(profile.getInputStream(), p, StandardCopyOption.REPLACE_EXISTING);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/image";
	}
	@GetMapping("/anitha")
	public String anitha() {
		return "anitha";
	}
	
	@GetMapping("/venkat")
	public String venkat() {
		return "venkat";
	}
	
}
